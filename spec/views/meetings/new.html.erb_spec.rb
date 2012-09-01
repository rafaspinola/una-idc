require 'spec_helper'

describe "meetings/new.html.erb" do
  before(:each) do
    assign(:meeting, stub_model(Meeting,
      :room => nil
    ).as_new_record)
  end

  it "renders new meeting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meetings_path, :method => "post" do
      assert_select "input#meeting_room", :name => "meeting[room]"
    end
  end
end
