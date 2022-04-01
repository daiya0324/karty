FactoryBot.define do
  factory :record do
    name { Faker::Name.initials(number: 2) }
    day { '2020-01-31' }
    manager { Faker::Name.initials(number: 2) }
    cut_id { 1 }
    color_id { 1 }
    parm_id { 1 }
    treatment_id { 1 }
    description { Faker::Lorem.sentence }
    association :user

    after(:build) do |record|
      record.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
