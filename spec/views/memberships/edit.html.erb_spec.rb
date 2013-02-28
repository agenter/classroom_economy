require 'spec_helper'

describe "memberships/edit" do
  before(:each) do
    @membership = assign(:membership, stub_model(Membership,
      :user => "",
      :group => ""
    ))
  end

  it "renders the edit membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => memberships_path(@membership), :method => "post" do
      assert_select "input#membership_user", :name => "membership[user]"
      assert_select "input#membership_group", :name => "membership[group]"
    end
  end
end
