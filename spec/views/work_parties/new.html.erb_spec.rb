require 'rails_helper'

RSpec.describe "work_parties/new", type: :view do
  before(:each) do
    assign(:work_party, WorkParty.new(
      name: "MyString"
    ))
  end

  it "renders new work_party form" do
    render

    assert_select "form[action=?][method=?]", work_parties_path, "post" do

      assert_select "input[name=?]", "work_party[name]"
    end
  end
end
