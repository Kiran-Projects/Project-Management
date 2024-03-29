require 'rails_helper'

RSpec.describe "work_types/edit", type: :view do
  before(:each) do
    @work_type = assign(:work_type, WorkType.create!(
      name: "MyString"
    ))
  end

  it "renders the edit work_type form" do
    render

    assert_select "form[action=?][method=?]", work_type_path(@work_type), "post" do

      assert_select "input[name=?]", "work_type[name]"
    end
  end
end
