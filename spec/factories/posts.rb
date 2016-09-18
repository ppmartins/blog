FactoryGirl.define do
  factory :post do
    title "First Post"
    body "This is the First Post body"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/lisbon.jpg', 'image/jpg')
  end
end
