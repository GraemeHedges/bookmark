feature 'viewing bookmarks' do
  scenario 'user visits /bookmarks and can see list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content('https://www.google.co.uk')
    expect(page).to have_content('https://destroyallsoftware.com')
  end
end