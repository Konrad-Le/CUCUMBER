Feature: Product Search
    Scenario: Search for a product by name
        Given the user is on the home page
        When the user searches for "The Product" in the search bar
        Then the user should see "The Product" in search bar
    
    Scenario: Search for a product by category
        Given the user is in the home page
        When the user selects "Electronics" category
        Then the user should see products related to "Electronics" category
    
    Scenario: Search for a product by brand
        Given the user is in the home page
        When the user selects "Requested Brand" brand
        Then the user should see products related to "Requested Brand" brand

    Scenario:   Search for not aviable product
        Given the user is in the home page
        When the user searches for "Not Available Product" in the search bar
        Then the user should see "No results found" message
        
         