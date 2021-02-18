feature 'viewing bookmarks' do
  scenario 'user visits /bookmarks and can see list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.add("http://www.google.com")
    Bookmark.add("http://destroyallsoftware.com") 

    visit '/bookmarks'
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://destroyallsoftware.com')
  end
end