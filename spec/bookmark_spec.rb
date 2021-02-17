require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include "https://www.google.co.uk"
      expect(bookmarks).to include "https://destroyallsoftware.com"
    end
  end
end