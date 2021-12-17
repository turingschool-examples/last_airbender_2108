# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    name { Faker::Ancient.hero }
    photo { Faker::Number.number(digits: 2) }
    allies { Faker::Ancient.hero }
    enemies { Faker::Ancient.hero }
    affilliations { Faker::Ancient.hero }
  end
end
