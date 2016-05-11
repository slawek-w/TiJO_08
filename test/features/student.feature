Feature: Text filter
  Scenario: Search using a search field
    When I browse to the "/"
    When I enter "War" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Warner"
    Then I should see "Warner" in "firstName" column in row "1" of "student.table" table

    When I enter "27" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "27"
    Then I should see "Burnett" in "lastName" column in row "1" of "student.table" table

    When I enter "944" into "input.search" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (944) 430-2322"
    Then I should see "gutierrez.freeman@undefined.info" in "email" column in row "1" of "student.table" table


  Scenario: Search using a FirstName field
    When I browse to the "/"
    When I enter "Aus" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Austin"
    Then I should see "Harvey" in "lastName" column in row "1" of "student.table" table

    When I enter "an" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Candace"
    Then I should see "+1 (932) 408-2012" in "phone" column in row "1" of "student.table" table
    Then I should see "32" in "age" column in row "2" of "student.table" table


  Scenario: Search using a LastName field
    When I browse to the "/"
    When I enter "fre" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Freeman"
    Then I should see "22" in "age" column in row "1" of "student.table" table

    When I enter "ve" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Harvey"
    Then I should see "austin.harvey@undefined.org" in "email" column in row "1" of "student.table" table
    Then I should see "Maxine" in "firstName" column in row "2" of "student.table" table


  Scenario: Search using a Age field
    When I browse to the "/"
    When I enter "24" into "input.age" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "24" in "age" column in row "1" of "student.table" table

    When I enter "1" into "input.age" field
    Then the css element "td:nth-of-type(1)" should contain the text "Warner"
    Then I should see "18" in "age" column in row "1" of "student.table" table
    Then I should see "Rose" in "lastName" column in row "2" of "student.table" table


  Scenario: Search using a Email field
    When I browse to the "/"
    When I enter ".biz" into "input.email" field
    Then the css element "td:nth-of-type(4)" should contain the text "warner.bridges@undefined.biz"
    Then I should see "+1 (914) 451-3055" in "phone" column in row "1" of "student.table" table
    Then I should see "Knapp" in "firstName" column in row "2" of "student.table" table

    When I enter "ry" into "input.email" field
    Then the css element "td:nth-of-type(2)" should contain the text "Ryan"
    Then I should see "chang.ryan@undefined.ca" in "email" column in row "1" of "student.table" table


  Scenario: Search using a Phone field
    When I browse to the "/"
    When I enter "20" into "input.phone" field
    Then the css element "td:nth-of-type(4)" should contain the text "good.burnett@undefined.tv"
    Then I should see "Good" in "firstName" column in row "1" of "student.table" table
    Then I should see "+1 (932) 408-2012" in "phone" column in row "2" of "student.table" table

    When I enter "17" into "input.phone" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (942) 551-2179"
    Then I should see "Spencer" in "lastName" column in row "1" of "student.table" table