require "rails_helper"

feature "User marks todo incomplete" do
	scenario "Successfully" do
		sign_in
		
		create_todo "Do shit"

		click_on "Mark complete"
		click_on "Mark incomplete"

		expect(page).not_to have_css ".todos li.completed", text: "Do shit"
		expect(page).to have_css ".todos li", text: "Do shit"
	end
end