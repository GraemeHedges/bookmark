feature 'viewing bookmarks' do
  scenario 'user visits /bookmarks and can see list of bookmarks' do

    Bookmark.add(url: 'http://www.google.com', title: 'Google')
    Bookmark.add(url: 'http://destroyallsoftware.com', title: 'Destroy All Software')

    visit '/bookmarks'

    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Destroy All Software', href: 'http://destroyallsoftware.com')
  end
end
