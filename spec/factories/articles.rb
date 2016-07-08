# spec/factories/article.rb

require 'faker'
# require 'rails_helper'

FactoryGirl.define do
  factory :article do |f|
    # f.title "John"
    # f.text "Doe" Not a random data

    f.title { Faker::Company.bs.title }
    f.text { Faker::Hacker.say_something_smart.text }
  end
end
