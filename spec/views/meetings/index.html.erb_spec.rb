require 'spec_helper'

describe "meetings/index.html.erb" do
  before(:each) do
    assign(:meetings, [
      stub_model(Meeting,
        :room => nil
      ),
      stub_model(Meeting,
        :room => nil
      )
    ])
  end

  it "renders a list of meetings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
