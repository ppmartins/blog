require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'

    fill_in 'Title', with: 'First Post'
    fill_in 'Body', with: 'This is the First Post body'
    attach_file('Image', "spec/files/images/lisbon.jpg")

    click_button 'Create Post'
#    expect(page).to have_content('spec/files/images/lisbon.jpg')
#    expect(page).to have_xpath("/spec/files/images/lisbon.jpg")
    expect(page).to have_content('First Post')
    expect(page).to have_content('This is the First Post body')
  end
end
