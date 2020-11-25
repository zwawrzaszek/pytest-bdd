Feature: Retirement Age Calculation
  As a US citizen, I would like to know when I qualify for full retirement
  benefits, so I can better plan for my financial future

  Scenario Outline: Older person uses calculator for themselves with correct inputs
    Given the calculator is started
    When the birthyear 1997 and month 1 are typed
    Then the birthyear "<birthYear>" and month "<birthMonth>" are entered and retirement age should be displayed as exactly "<retirementAge>" old taking place in "<month>" of "<year>"

    Examples: Dates
    | birthYear | birthMonth | retirementAge   | month    | year |
    | 1937      | 1          | 65 and 0 months | January  | 2002 |
    | 1938      | 1          | 65 and 2 months | March    | 2003 |
    | 1939      | 1          | 65 and 4 months | May      | 2004 |
    | 1940      | 1          | 65 and 6 months | July     | 2005 |
    | 1941      | 1          | 65 and 8 months | September| 2006 |
    | 1942      | 12         | 65 and 10 months| October  | 2008 |
    | 1943      | 1          | 66 and 0 months | January  | 2009 |
    | 1954      | 12         | 66 and 0 months | December | 2020 |
    | 1955      | 1          | 66 and 2 months | March    | 2021 |
    | 1956      | 1          | 66 and 4 months | May      | 2022 |
    | 1957      | 1          | 66 and 6 months | July     | 2023 |
    | 1958      | 1          | 66 and 8 months | September| 2024 |
    | 1959      | 1          | 66 and 10 months| November | 2025 |
    | 1960      | 1          | 67 and 0 months | January  | 2027 |


  Scenario: Young person uses calculator for themselves with correct inputs
    Given the calculator is started
    When the birthyear 1997 and month 1 are typed
    Then the birthyear "1997" and month "1" are entered and retirement age should be displayed as exactly "67 and 0 months" old taking place in "January" of "2064"
