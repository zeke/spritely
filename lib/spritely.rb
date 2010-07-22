module Spritely

  module HelperMethods

    # Override regular link_to by putting a spriteable div inside it.
    def spritely_link_to(name, options={}, html_options={})
      link_content = content_tag(:span, "") + content_tag(:div, name)
      html_options[:class] = (html_options[:class] || "").split(" ").push("spritely").join(" ")
      link(link_content, options, html_options)

      # This works just like link_to, but with one difference..
      # If the link is to the current page, a class of 'active' is added
      link_to_unless_current(link_content, options, html_options) do
        html_options[:class] = (html_options[:class] || "").split(" ").push("active").join(" ")
        link_to(name, options, html_options)
      end
    end
  
    # Override link_to_function by putting a spriteable div inside it.
    def spritely_link_to_function(name, options={}, html_options={})
      link_content = content_tag(:span, "") + content_tag(:div, name)
      html_options[:class] = (html_options[:class] || "").split(" ").push("spritely").join(" ")
      link_to_function(link_content, *[options, html_options])
    end

  end
  
end