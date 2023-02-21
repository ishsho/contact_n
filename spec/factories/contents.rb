FactoryBot.define do
  factory :content do
    title {"aaa"}
    text {"aaaaaa"}

    association :user
    association :topic

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
