feature "Add a bookmark" do
  scenario "User can add a new bookmark" do
    visit('/bookmarks')
    fill_in :url, with: "https://www.youtube.com"
    click_button 'Submit'
    expect(page).to have_content "https://www.youtube.com"
  end
end