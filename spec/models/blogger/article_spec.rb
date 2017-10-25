require 'rails_helper'

module Blogger
  RSpec.describe Article, type: :model do
    it "should have a valid factory" do
      expect(build(:blogger_article)).to be_valid
    end

    # Shoulda matchers are not yet compatable with rails 5 and as such will continue adding shoulda matchers later
    let(:article) { build(:blogger_article) }

    describe "Validations" do
      it "should not save with small title" do
        article.title = ''
        expect(article).not_to be_valid
      end

      it "should not save with small text" do
        article.text = nil
        expect(article).not_to be_valid
      end
    end
  end
end
