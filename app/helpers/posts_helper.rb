module PostsHelper
  def render_content
      unless @post.content.nil?
        @post.content
      else
        content_tag(:p, "No Content")
      end
  end
end
