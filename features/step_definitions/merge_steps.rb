Then /^I should not see the "([^"]*)" button$/ do | button_name |
  assert find_button(button_name) == nil
end
