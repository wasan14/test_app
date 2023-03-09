require "rails_helper"

feature "User completes todo" do
	scenario "Successfully" do
		sign_in
		
		create_todo "Do shit"

		click_on "Mark complete"

		expect(page).to have_css ".todos li.completed", text: "Do shit"
	end
end