FactoryGirl.define do
  factory :rain_rule do
    station "MyText"
    start_date "2018-06-29 00:46:14"
    end_date "2018-06-29 00:46:14"
    without_expiration false
    operation "MyString"
    reference_value 1.5
    range_value_ini 1.5
    range_value_end 1.5
    nickname "MyString"
    description "MyText"
    enable false
  end
end
