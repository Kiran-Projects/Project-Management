require 'rails_helper'

RSpec.describe "work_types/index", type: :view do
  before(:each) do
    assign(:work_types, [
      WorkType.create!(
        name: "Name"
      ),
      WorkType.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of work_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
