Given("I am on the chillpharm login page") do
  chillibeanLoginPage.visitHomepage
end

When("I enter no login details") do
  chillibeanLoginPage.clickLoginButton
end

Then("I see an error message for no login details") do
  expect(page.should have_css('li', class: "error", text: "Email is required"))
  expect(page.should have_css('li', class: "error", text: "Password is required"))
end

When("I enter the incorrect login credentials") do
  chillibeanLoginPage.enterIncorrectUsername
  chillibeanLoginPage.enterIncorrectPassword
  chillibeanLoginPage.clickLoginButton
end

Then("I see an error message for the incorrect password") do
  expect(page.should have_css('div', class: "error", text: "Incorrect email or password"))
end

Then("I see a warning for being locked out my account") do
  expect(page.should have_css('span', text: "Account Lockout: Warning"))
  expect(page.should have_css('p', text: "This is the third consecutive failed attempt to login with email address #{chillibeanLoginPage.emailAddress}."))
end

Then("I see the error for too many incorrect attmepts") do
  expect(page.should have_css('span', text: "Account Lockout"))
  expect(page.should have_css('p', text: "If an account exists with this email address, it has been locked."))
  expect(page.should have_css('p', text: "Too many consecutive attempts to log in with email address: #{chillibeanLoginPage.emailAddress}."))
end