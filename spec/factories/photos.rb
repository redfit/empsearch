# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    name "MyString"
    description "MyText"
    gallery nil
  end
end
