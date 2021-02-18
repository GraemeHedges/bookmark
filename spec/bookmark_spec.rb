require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.add(url: "http://www.google.com")
      Bookmark.add(url: "http://destroyallsoftware.com") 

      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.google.com"
      expect(bookmarks).to include "http://destroyallsoftware.com"
    end
  end

  describe '.add' do
    it 'adds a new bookmark' do
      Bookmark.add(url: 'http://www.youtube.com')

      expect(Bookmark.all).to include 'http://www.youtube.com'
    end
  end
end
