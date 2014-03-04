require 'spec_helper'

describe "proyects/show" do
  before(:each) do
    @proyect = assign(:proyect, stub_model(Proyect,
      :title => "Title",
      :description => "Description",
      :thumb => "Thumb",
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Thumb/)
    rendered.should match(/Photo/)
  end
end
