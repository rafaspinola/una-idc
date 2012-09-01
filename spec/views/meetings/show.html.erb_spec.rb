require 'spec_helper'

describe "meetings/show.html.erb" do
  before(:each) do
    @meeting = assign(:meeting, stub_model(Meeting,
      :room => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
