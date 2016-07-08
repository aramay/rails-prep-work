# spec/models/contact.rb
require 'rails_helper'

# describe "Article" do
  RSpec.describe Article, type: :model do
    let(:has_title) {Article.new(title: "test")}
    let(:title) {Article.new(title: "test blog")}
    let(:blog) {Article.new(title: "test blog", text: "will save this article")}

    # it 'has a valid factory' do
    #   FactoryGirl.create(:article).should be_valid
    #   end
    it "title minimum length is 5 chars" do
      has_title.save
      expect(has_title.errors[:title]).to include("is too short (minimum is 5 characters)")
    end

    it "has article text" do
      has_title.save
      expect(has_title.errors[:title]).to include("is too short (minimum is 5 characters)")
    end

    it "saves the article when fields are not blank" do
      expect{blog.save}.to change{Article.count}.by(1)
    end

  it "has text"
end
