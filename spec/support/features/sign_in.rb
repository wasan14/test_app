module Features
	def sign_in
		sign_in_as "hello@rohit.com"
	end

	def sign_in_as(email)
		visit root_path
		fill_in "Email", with: email
		click_on "Sign in"
	end
end