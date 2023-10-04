#@FLT-2499
Feature: Fleetgru application - Last Odometer Filter Function

  User Story :

  As a user, I should be able to use "Last Odometer" filter under 'Fleet-Vehicles' page



  Acceptance Criteria:

  1- User can select "Last Odometer" filter under 'Fleet-Vehicles' page
  2- "Last Odometer" filter should provide the methods shown as below:
  -> Between
  -> Not Between
  -> Equals
  -> Not Equals
  -> More Than
  -> Less Than
  -> Equals or More Than
  -> Equals or Less Than
  -> Is Empty
  -> Is Not Empty
  3- When user selects "Between" method with numeric values, the results should be between the specified values
  4- When user selects "Equals" method with numeric values, the results should match the specified value exactly
  5- When user selects "More than" method with numeric values, the results should be more than the specified value
  6- When user selects "Less than" method with numeric values, the results should be less than the specified value
  7- When user selects "Is Empty" method, only empty values should be displayed.
  8- Methods ("Between","Equals","More Than","Less Than") shouldn't accept non-numeric values

  Background:
    Given The user on the login page
#@FLT-2510
  Scenario Outline: 1- All user types should be able to use "Last Odometer" filter under 'Fleet-Vehicles' page
    When User logs in as "<userType>"
    And User navigates to Dashboard Fleet-Vehicle page
    And The user hover over Fleet menu then clicks Vehicle Odometer page
    And The user clicks Creat Vehicle Odometer button
    Then The user should see Vehicle Odometer page
    Then The user should see Create Vehicle Odometer page
    Examples:
      | userType     |
      | driver       |
      | storemanager |
      | salesmanager |

  Scenario Outline: 2- Verifying Vehicle Odometer Filter with different methods and the Methods shouldn't accept non-numeric values
  When The user should click  Create Vehicle Odometer button
    And The user can fill out Vehicle Odometer "<methods>" in the Odometer Value field
    Then Methods shouldn't accept non-numeric values
    Examples:
      | methods             |
      | Between             |
      | Not Between         |
      | Equals              |
      | Not Equals          |
      | More Than           |
      | Less Than           |
      | Equals or More Than |
      | Equals or Less Than |
      | Is Empty            |
      | Is Not Empty        |


  Scenario Outline: 3- Verifying Vehicle Odometer Filter can Accept Numeric data and create a new Vehicle Odometer
    When The user fill out Vehicle Odometer "<Numeric data>" in the Odometer Value field
    Then Create Vehicle Odometer successfully and the Vehicle Odometer Value should see on the Vehicle Odometers Page
    Examples:
      | Numeric data |




