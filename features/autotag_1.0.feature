Feature: Deployment
  In order to get auto-tagging goodness on ci boxes
  As a ruby and git ninja
  I want to be able to easily create a tag from the command line with the same name format as the one created by the cap tasks

  Scenario: user runs autotag with "help"
    Given a repo
    When I run autotag with "help"
    And I should see "USAGE:"
    And no tags should be created
    And the exit code should be 0

  Scenario: user runs autotag with "version"
    Given a repo
    When I run autotag with "version"
    And I should see "AutoTagger version"
    And no tags should be created
    And the exit code should be 0

  Scenario: user runs autotag with "demo . --date-format %Y-%m-%d-%H-%M-%S"
    Given a repo
    When I run autotag with "demo --date-format %Y-%m-%d-%H-%M-%S"
    Then a hyphen-delimited "demo" tag should be created
    And the exit code should be 0
