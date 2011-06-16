require 'spec_helper'

describe "startups/show.html.erb" do
  before(:each) do
    @startup = assign(:startup, stub_model(Startup,
      :title => "Title",
      :city => "City",
      :description => "MyText",
      :skills => "Skills"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Skills/)
  end
end
