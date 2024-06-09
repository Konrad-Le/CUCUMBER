Feature: Product Order

    Scenario: Unaviable product order attempt
        Given the user is on the product order page
        When the user attempts to order an unavailable product
        Then the user should see an error message indicating the product is unavailable

    Scenario: Aviable product order attempt
        Given the user is on the product order page
        When the user attempts to order an available product
        Then the user should see a success message indicating the order was placed successfully
        Then the user should see proposal to go to pay page

    Scenario: Not logged user attempt to pay for products in basket
        Given the user is not logged in
        Given the user is on the pay page
        When the user attempts to pay for products
        Then the user should be redirected to the login page

    Scenario: Logged user attempt to order product
        Given the user is logged in
        Given the user is on the pay page
        When the user attempts to pay for products
        Then the user should be asked for delivery address and pay method
