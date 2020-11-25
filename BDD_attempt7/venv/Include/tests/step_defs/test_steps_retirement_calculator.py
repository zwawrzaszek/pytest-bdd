from pytest_bdd import scenarios, parsers, given, when, then
from FullRetirementAge import *


EXTRA_TYPES = {
    'Number': int,
}


CONVERTERS = {
    'birthYear': int,
    'birthMonth': int,
    'year': int,
}

scenarios('../features/full_retirement_age.feature', example_converters=CONVERTERS)


@given("the calculator is started")
def start_calc():
    pass


@when("the birthyear 1997 and month 1 are typed")
def enter_values():
    pass


@then(parsers.cfparse('the birthyear "{birthYear:Number}" and month "{birthMonth:Number}" are entered and retirement age should be displayed as exactly "{retirementAge}" old taking place in "{month}" of "{year:Number}"', extra_types=EXTRA_TYPES))
@then('the birthyear "<birthYear>" and month "<birthMonth>" are entered and retirement age should be displayed as exactly "<retirementAge>" old taking place in "<month>" of "<year>"')
def check_output(birthYear, birthMonth, retirementAge, month, year):
    outputList = retirementAgeCalculator(birthYear, birthMonth)
    assert outputList[0] == retirementAge
    assert outputList[1] == month
    assert outputList[2] == year
