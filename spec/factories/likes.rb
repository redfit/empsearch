# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :like do
    likable_id 1
    likable_type "MyString"
  end
end
