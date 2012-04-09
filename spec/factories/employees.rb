# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    user_id "MyString"
    usa_id "MyString"
    pic_name "MyString"
    user_name "MyText"
    unit "MyText"
    role "MyText"
    email "MyText"
    tel1 "MyText"
    tel2 "MyText"
    tel3 "MyText"
    place "MyText"
    introduction "MyText"
    target "MyText"
  end
end
