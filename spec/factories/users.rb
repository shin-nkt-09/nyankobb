FactoryBot.define do
  factory :user do
    nickname              {"tanaka"}
    email                 {"testes@testes"}
    password              {"0000000"}
    password_confirmation {"0000000"}
  end
end