FactoryBot.define do
  factory :user do    #valid user factory
    name "hoge"
    email "hoge@gmail.com"
    password "hogefuga"
    password_confirmation "hogefuga"
  end
end
