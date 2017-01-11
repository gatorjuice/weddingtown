FactoryGirl.define do
  factory :location do
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zipcode "MyString"
    max_guests 1
    phone "MyString"
    website "MyString"
    latitude 1.5
    longitude 1.5
    table_cap 1
    table_count 1
    chair_count 1
  end
end
