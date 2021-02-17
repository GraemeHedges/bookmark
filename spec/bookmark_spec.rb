require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.google.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://destroyallsoftware.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include "https://www.google.co.uk"
      expect(bookmarks).to include "https://destroyallsoftware.com"
    end
  end
end