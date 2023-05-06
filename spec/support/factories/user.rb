FactoryBot.define do
  factory :user do
    first_name { "Pebbles" }
    last_name { "Pezcara" }
    email { "pebbs_pezcara@test.com" }
    password_digest { BCrypt::Password.create('password') }
  end
end
