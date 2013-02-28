# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    from_account ""
    to_account ""
    amount 1.5
  end
end
