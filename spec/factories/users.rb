# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email(name: first_name.to_s) }
    username { Faker::Internet.username(specifier: first_name.to_s, seperators: %w[. _ -]) }
    passowrd { Faker::Internet.password }
    will_pair_program { [true, false].sample }
  end
end
