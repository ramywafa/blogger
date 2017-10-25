FactoryGirl.define do
  factory :blogger_comment, class: 'Blogger::Comment' do
    association :article, factory: :blogger_article
    content "MyText"
  end
end
