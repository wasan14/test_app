require "rails_helper"

feature "User creates todo" do
	scenario "Successfully" do
		sign_in
		
		create_todo "Do shit"

		expect(page).to have_css ".todos li", text: "Do shit"
	end
end