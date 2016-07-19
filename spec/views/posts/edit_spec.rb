require 'rails_helper'

RSpec.describe "posts/edit.html.erb", type: :view do
  before(:each) do
    @post = Post.create(title: "Big Title", content: "content")
  end

  it 'can render partial' do
    render
    expect(response).to render_template(partial: "_form")
  end

  it "has links" do
    render
    expect(rendered).to include("Show")
    expect(rendered).to include("Back")
  end
end
