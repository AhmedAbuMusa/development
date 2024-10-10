
Given("Maria orders a ${int} coffee from Lee") do |int|
  # Write code here that turns the phrase above into concrete actions
  maria = Customer.new
  li = Associate.new
  price = int
  maria.order
end

When("Maria pays with a credit card") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("Lee should process the payment") do
  pending # Write code here that turns the phrase above into concrete actions
end