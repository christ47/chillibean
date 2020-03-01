Before do
    Capybara.page.current_window.maximize
    browser = Capybara.current_session.driver.browser
    browser.manage.delete_all_cookies
end