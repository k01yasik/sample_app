#»спользу€ символ ':user', мы указываем Factory Girl на необходимость симулировать модель User.

	FactoryGirl.define  do 
		factory :user do
			name                     "Michael Hartl"
			email                    "mhartl@example.com"
			password                 "foobar"
			password_confirmation    "foobar"
		end
	end	
	
	FactoryGirl.define do
		sequence :email do |n|
			"person-#{n}@example.com"
		end
	end	
	
	FactoryGirl.define do
		factory :micropost do
			content "Foo bar"
			association :user
		end
	end	