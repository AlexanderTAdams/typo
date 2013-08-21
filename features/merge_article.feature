Feature: Merge Articles
  As a blog administrator
  In order to organize information on certain topic
  I want to be able to merge articles on my blog

  Background:
    Given the blog is set up

#http://localhost:3000/admin/content/edit/1
Scenario: Non-admin should not see the merge article link
#Given I am logged into the admin panel
#And I am on the home page
  Given I am logged into the regular user panel
    And I am on the edit page of article 1
  Then I should not see "Merge Articles"
  And show me the page

#Scenario: Successfully write articles
#Given I am logged into the admin panel
#And I am on the new article page
#When I fill in "article_title" with "Foobar"
#And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
#And I press "Publish"
#Then I should be on the admin content page
#When I go to the home page
#Then I should see "Foobar"
#When I follow "Foobar"
#Then I should see "Lorem Ipsum"
