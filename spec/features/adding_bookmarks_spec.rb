feature 'Add a bookmark' do
  scenario 'User can add a new bookmark' do
    visit('/bookmarks')
    fill_in :url, with: 'https://www.youtube.com'
    fill_in :title, with: 'YouTube'
    click_button 'Submit'

    expect(page).to have_link('YouTube', href: 'https://www.youtube.com')
  end
end
