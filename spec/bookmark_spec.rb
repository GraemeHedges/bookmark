require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmark = Bookmark.add(url: 'http://www.google.com', title: 'Google')
      Bookmark.add(url: 'http://destroyallsoftware.com', title: 'Destroy All Software')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 2
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.google.com'
    end
  end

  describe '.add' do
    it 'adds a new bookmark' do
      bookmark = Bookmark.add(url: 'http://www.youtube.com', title: 'YouTube')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'YouTube'
      expect(bookmark.url).to eq 'http://www.youtube.com'
    end
  end
end
