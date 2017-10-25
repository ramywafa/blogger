FactoryGirl.define do
  factory :blogger_article, class: 'Blogger::Article' do
    sequence(:title) { |n| "Title{n}" }
    text "MyText MyText MyText MyTextMyText MyTextMyTextMyTextMyTextMyText"
  end
end
