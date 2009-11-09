Given /^the following items:$/ do |items|
  Item.create!(items.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) item$/ do |pos|
  visit items_url
  within("table > tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following items:$/ do |expected_items_table|
  expected_items_table.diff!(table_at('table').to_a)
end
