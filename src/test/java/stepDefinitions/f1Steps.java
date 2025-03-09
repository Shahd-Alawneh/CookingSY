package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class f1Steps {
	
	@Given("the customer is on the profile page")
	public void the_customer_is_on_the_profile_page() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@When("the customer enters {string} as a dietary preference and {string} as an allergy")
	public void the_customer_enters_as_a_dietary_preference_and_as_an_allergy(String string, String string2) {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}

	@Then("the system should store these preferences")
	public void the_system_should_store_these_preferences() {
	    // Write code here that turns the phrase above into concrete actions
	    throw new io.cucumber.java.PendingException();
	}
	
    @Given("the chef is viewing a customer's profile")
    public void the_chef_is_viewing_a_customers_profile() {
        System.out.println("Chef is viewing customer's profile");
    }

    @Then("the chef should see {string} as a dietary preference and {string} as an allergy")
    public void the_chef_should_see_as_a_dietary_preference_and_as_an_allergy(String preference, String allergy) {
        
    }
}
