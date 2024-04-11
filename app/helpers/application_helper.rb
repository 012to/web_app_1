module ApplicationHelper
  def flash_background_color(type)
    case type.to_sym
    when :notice then "bg-green-500"
    when :alert  then "bg-red-500"
    when :error  then "bg-yellow-500"
    else "bg-gray-500"
    end
  end

  def full_title(page_title = '')
    base_title = "モチベの泉"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def devise_error_messages
    return "" if resource.errors.empty?

    html = resource.errors.full_messages.map do |msg|
      <<-ERRORS.squish
        <div class="error_field alert alert-danger" role="alert">
          <p class="error_msg">#{msg}</p>
        </div>
      ERRORS
    end.join

    sanitize(html)
  end
end
