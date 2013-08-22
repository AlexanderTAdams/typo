Feature: Merge Articles
  As a blog administrator
  In order to organize information on certain topic
  I want to be able to merge articles on my blog

  Background:
    Given the blog is set up

Scenario: Non-admin should not see the merge article link
Given I am logged into the regular user panel
And I am on the edit page of article 1
Then I should not see "Merge Articles"
And show me the page


