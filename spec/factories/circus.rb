# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :circus, :class => 'Circus' do
    brother_id 1
    participation false
  end
end
