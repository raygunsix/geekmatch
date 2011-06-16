require 'spec_helper'

describe "startups/index.html.erb" do
  before(:each) do
    assign(:startups, [
      stub_model(Startup,
        :title => "Title",
        :city => "City",
        :description => "MyText",
        :skills => "Skills"
      ),
      stub_model(Startup,
        :title => "Title",
        :city => "City",
        :description => "MyText",
        :skills => "Skills"
      )
    ])
  end

  it "renders a list of startups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Skills".to_s, :count => 2
  end
end
