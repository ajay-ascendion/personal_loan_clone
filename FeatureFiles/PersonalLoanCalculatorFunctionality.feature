Feature: Personal Loan Calculator Functionality
  As a user,
  I want to use the personal loan calculator,
  So that I can estimate my loan payments and understand my options.

  Scenario: Loan calculator page loads successfully
    Given the user has internet access
    When the user navigates to the personal loan calculator page
    Then the loan calculator page should load and display all UI elements

  Scenario: Required input fields are present
    Given the loan calculator page is loaded
    When the user views the calculator form
    Then the loan amount, interest rate, loan term, and all other required input fields should be visible

  Scenario: Loan amount input accepts valid values
    Given the loan calculator page is loaded
    When the user enters a valid loan amount
    Then the loan amount should be accepted without error

  Scenario: Loan amount input rejects invalid values
    Given the loan calculator page is loaded
    When the user enters an invalid loan amount
    Then an error message should be displayed for invalid input

  Scenario: Interest rate input accepts valid values
    Given the loan calculator page is loaded
    When the user enters a valid interest rate
    Then the interest rate should be accepted without error

  Scenario: Interest rate input rejects invalid values
    Given the loan calculator page is loaded
    When the user enters an invalid interest rate
    Then an error message should be displayed for invalid input

  Scenario: Loan term input accepts valid values
    Given the loan calculator page is loaded
    When the user enters a valid loan term
    Then the loan term should be accepted without error

  Scenario: Loan term input rejects invalid values
    Given the loan calculator page is loaded
    When the user enters an invalid loan term
    Then an error message should be displayed for invalid input

  Scenario: Calculate monthly payment with valid inputs
    Given valid loan amount, interest rate, and term are entered
    When the user clicks the 'Calculate' button
    Then the monthly payment should be calculated and displayed

  Scenario: Reset calculator clears all inputs
    Given values are entered in all input fields
    When the user clicks the 'Reset' or 'Clear' button
    Then all input fields should be cleared

  Scenario: Error messages displayed for empty required fields
    Given the loan calculator page is loaded
    When the user leaves required fields empty and clicks 'Calculate'
    Then error messages should be displayed for missing fields

  Scenario: Help or tooltip is available for input fields
    Given the loan calculator page is loaded
    When the user hovers over or focuses on an input field
    Then a help message or tooltip should be displayed

  Scenario: Calculator handles edge case values
    Given the loan calculator page is loaded
    When the user enters edge case values such as a very high loan amount or zero interest rate
    Then the calculator should process and display correct results or appropriate errors

  Scenario: Navigation links work correctly
    Given the loan calculator page is loaded
    When the user clicks on navigation links to related articles or the homepage
    Then the user should be redirected to the correct page

  Scenario: Print or export results after calculation
    Given a calculation has been performed
    When the user clicks the 'Print' or 'Export' button
    Then the results should be printed or exported correctly
