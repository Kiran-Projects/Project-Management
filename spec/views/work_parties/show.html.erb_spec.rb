require 'rails_helper'

RSpec.describe "work_parties/show", type: :view do
  before(:each) do
    @work_party = assign(:work_party, WorkParty.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
