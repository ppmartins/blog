require 'rails_helper.rb'

feature 'Creating posts' do
  before do
    user = create :user
    sign_in_with user
  end

  scenario 'admin can create a post' do
    visit '/admin'

    click_link 'New Post'

    fill_in 'Title', with: 'New Post'
    fill_in 'Body', with: 'This is First Post Body'
    attach_file('Image', "spec/files/images/coffee.jpg")

    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
    expect(page).to have_content('New Post')
    expect(page).to have_content('This is First Post Body')
  end
end
