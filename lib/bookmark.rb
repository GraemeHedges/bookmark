require 'pg'

class Bookmark
  def initialize
    @bookmark_list = ['google.co.uk', 'youtube.com', 'github.com']
  end

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end