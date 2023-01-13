require 'rails_helper'

RSpec.describe "work_parties/index", type: :view do
  before(:each) do
    assign(:work_parties, [
      WorkParty.create!(
        name: "Name"
      ),
      WorkParty.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of work_parties" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
