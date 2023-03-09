require "rails_helper"

feature "User sees own todos" do
	scenario "doesn't see others users todos" do
		Todo.create!(title: "Do shit", email: "world@rohit.com")

		sign_in_as "hello@rohit.com"

		expect(page).not_to have_css ".todos li", text: "Do shit"
	end
end