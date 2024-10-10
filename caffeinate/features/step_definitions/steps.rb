require 'caffeinate'

Given("Maria orders a ${int} coffee") do |int|
  @maria = Customer.new
  @li = Associate.new
  @price = int
  @card_minimum = int
  @maria.orders
end

# Given("Maria orders a ${int} coffee from Lee") do |int|
#   @maria = Customer.new
#   @li = Associate.new
#   price = int
#   @maria.orders
# end

When("Maria pays with a credit card") do
  @maria.pays_with_credit
end

Then("Lee should process the payment") do
  @price = 3
  @card_minimum = 2
  expect(@li.process_payment(@price, @card_minimum)).to include(true)
end

Then("Lee should not process the payment") do
  @price = 1 
  @card_minimum = 2
  expect(@li.process_payment(@price, @card_minimum)).to include(false)
  expect(@li.process_payment(@price, @card_minimum)).to include('request_cash')
end

