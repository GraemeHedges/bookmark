require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.add("http://www.google.com")
      Bookmark.add("http://destroyallsoftware.com") 

      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.google.com"
      expect(bookmarks).to include "http://destroyallsoftware.com"
    end
  end
end