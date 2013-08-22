Given /the following articles exist/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create!(article)
  end
end

Given /the following users exist/ do |users_table|
  users_table.hashes.each do |user|
    User.create!(user)
  end
end

When /^I am logged into the admin panel as "(.*)"$/ do |login|
  visit '/accounts/login'
  fill_in 'user_login', :with => login
  fill_in 'user_password', :with => login + "_pw"
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

When /^I (re)?visit the the edit page for "(.*)"$/ do |re, title|
  visit 'admin/content/edit/' + Article.find_by_title(title).id.to_s
end

When /^I attempt to merge with "(.*)"$/ do |title|
  fill_in 'merge_with', :with => Article.find_by_title(title).id
  click_button 'Merge'
end

#///////////////////////////////////////////////
#And /^I should see button "(.*)"$/ do |button|
#  find_button(button).should_not be_false
#end

#And /^I should not see button "(.*)"$/ do |button|
#  page.should have_no_button(button)
#end

#And /^I am not an admin$/ do
#  page.should_not have_content('Settings')
#end
#//////////////////////////////////////////