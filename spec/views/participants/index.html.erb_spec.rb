require 'spec_helper'

describe "participants/index.html.erb" do
  before(:each) do
    assign(:participants, [
      stub_model(Participant,
        :name => "Name"
      ),
      stub_model(Participant,
        :name => "Name"
      )
    ])
  end

  it "renders a list of participants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
