require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :user_id => "User",
      :usa_id => "Usa",
      :pic_name => "Pic Name",
      :user_name => "MyText",
      :unit => "MyText",
      :role => "MyText",
      :email => "MyText",
      :tel1 => "MyText",
      :tel2 => "MyText",
      :tel3 => "MyText",
      :place => "MyText",
      :introduction => "MyText",
      :target => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(/Usa/)
    rendered.should match(/Pic Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
