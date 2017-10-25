module Blogger
  class Comment < ApplicationRecord
    validates :content, length: { minimum: 2 }
    validates :article, presence: true

    belongs_to :article, inverse_of: :comments
    belongs_to :commenter, class_name: Blogger.user_class.to_s
  end
end
