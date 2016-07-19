require 'rails_helper'

RSpec.describe "posts/index.html.erb", type: :view do
  it 'can render' do
    @post = Post.create(title: "Big Title", content: "content")
    @posts = Array.new(2, @post)
    render
    expect(rendered).to include("Title")
    expect(rendered).to include("Big Title")
  end
end

RSpec.describe "posts/index.json.jbuilder", type: :view do
  it "contains data" do
    @post = Post.create(title: "Big Title", content: "content")
    @posts = Array.new(2, @post)
    render
    expect(rendered).to include("id")
    expect(rendered).to include("title")
    expect(rendered).to include("content")
    expect(rendered).to include("Big Title")
  end
end
