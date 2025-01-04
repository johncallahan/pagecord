module PostsHelper
  include Pagy::Frontend

  def without_action_text_image_wrapper(html)
    # Regular expression to match the action-text-attachment wrapper
    attachment_regex = /<action-text-attachment[^>]*>(.*?)<\/action-text-attachment>/m

    # Replace the ActionText attachment wrapper with just the image tag
    html.gsub(attachment_regex) { |match| $1.gsub(/<figure[^>]*>/, "").gsub(/<\/figure>/, "") }
  end

  def upvoted_by_current_viewer?(post)
    @upvote = post.upvotes.find_by(hash_id: @hash_id)
  end

  # Returns the URL of the social link to avoid Brakeman warning
  # This is fine since the URL is sanitized by the SocialLink model
  def social_link_url(social_link)
    social_link.url
  end
end
