FactoryGirl.define do
  factory :alert_station do
    station "MyString"
    alert_status "MyString"
    date "2018-06-29 01:01:24"
    description "MyText"
    region "MyText"
    severity "MyString"
    coordinates "MyText"
    verified false
    verified_for_user "MyString"
  end
end
