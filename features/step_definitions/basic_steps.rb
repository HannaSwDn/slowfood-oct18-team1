Given("the following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end

Given("the following dishes exist") do |table|
    table.hashes.each do |dish|
        FactoryBot.create(:dish, dish)
    end
end

Given("I visit the page") do
    visit root_path
end

When("I click {string}") do |link|
    click_on link
end

When("I fill in {string} field with {string}") do |field, input|
    fill_in field, with: input
end

Given("I am logged in") do
    steps %{
        Given I fill in 'Email' field with 'real@email.com'
        And I fill in 'Password' field with 'password'
        And I click 'Log in'
    }
end

Given('show me the page') do
    save_and_open_page
end