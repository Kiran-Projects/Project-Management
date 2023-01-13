require 'rails_helper'

RSpec.describe "work_parties/edit", type: :view do
  before(:each) do
    @work_party = assign(:work_party, WorkParty.create!(
      name: "MyString"
    ))
  end

  it "renders the edit work_party form" do
    render

    assert_select "form[action=?][method=?]", work_party_path(@work_party), "post" do

      assert_select "input[name=?]", "work_party[name]"
    end
  end
end
