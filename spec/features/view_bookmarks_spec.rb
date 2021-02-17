feature 'viewing bookmarks' do
  scenario 'user visits /bookmarks and can see list of bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.google.co.uk');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://destroyallsoftware.com');")

    visit '/bookmarks'
    expect(page).to have_content('https://www.google.co.uk')
    expect(page).to have_content('https://destroyallsoftware.com')
  end
end