require 'rails_helper'

module Blogger
  RSpec.describe Comment, type: :model do
    it "should have a valid factory" do
      expect(build(:blogger_comment)).to be_valid
    end

    # Shoulda matchers are not yet compatable with rails 5 and as such will continue adding shoulda matchers later
    let(:comment) { build(:blogger_comment) }

    describe "Validations" do
      it "should not save with small title" do
        comment.content = ''
        expect(comment).not_to be_valid
      end

      it "should not save with small text" do
        comment.article = nil
        expect(comment).not_to be_valid
      end
    end
  end
end
