Given /^I have a room called (.+)$/ do |room_name|
  Room.create!({:name => room_name})
end

Given /^I have participants called (.+)$/ do |participants|
  participants.split(", ").each do |p|
    Participant.create!({:name => p})
  end
end

When /^I select the Principal room$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I select the participants Rafael, Bruno, Hugo$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I type the timespan of the meeting$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I click on New meeting$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I see the Meeting created page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I see the Principal room$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I see the Rafael, Hugo, Bruno participants$/ do
  pending # express the regexp above with the code you wish you had
end
