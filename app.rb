require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello, world!'
  end

  get '/bookmarks' do
    @bookmark = Bookmark
    erb(:list)
  end

  post '/bookmarks' do
    Bookmark.add(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
