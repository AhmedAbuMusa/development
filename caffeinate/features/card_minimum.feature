# language: en
Feature: Card Minimum
    Scenario: Total charge is over the $2 credit card minimum
        Given Maria orders a $3 coffee
        When Maria pays with a credit card
        Then Lee should process the payment

    Scenario: Total charge is under the $2 credit card minimum
        Given Maria orders a $1 coffee
        When Maria pays with a credit card
        Then Lee should not process the payment
