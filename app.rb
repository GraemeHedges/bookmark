require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello, world!'
  end

  get '/bookmarks' do
    @bookmark = Bookmark
    erb(:list)
  end


  run! if app_file == $0
end