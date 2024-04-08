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
      "#{ page_title } | #{ base_title }"
    end
  end
end
