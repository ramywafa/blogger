module Blogger
  class Article < ApplicationRecord
    validates :title, length: { minimum: 4 }
    validates :text, length: { minimum: 20 }

    has_many :comments, inverse_of: :article
    belongs_to :author, class_name: Blogger.user_class.to_s, optional: true
  end
end
