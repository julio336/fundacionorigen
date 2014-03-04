require 'spec_helper'

describe "proyects/index" do
  before(:each) do
    assign(:proyects, [
      stub_model(Proyect,
        :title => "Title",
        :description => "Description",
        :thumb => "Thumb",
        :photo => "Photo"
      ),
      stub_model(Proyect,
        :title => "Title",
        :description => "Description",
        :thumb => "Thumb",
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of proyects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Thumb".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
