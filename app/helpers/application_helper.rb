module ApplicationHelper
  def markdown(text)
    # Settings for the markdown.render method to use.
    renderer = Redcarpet::Render::HTML.new(
      filter_html: true,
      no_images: true,
      no_links: true,
      no_styles: true,
      hard_wrap: true,
      prettify: true,
    )

    markdown = Redcarpet::Markdown.new(
      renderer,
      no_intra_emphasis: true,
      strikethrough: true,
      lax_spacing: true
    )

    markdown.render(text).html_safe
  end

  def dash_it(text)
    text.gsub!(/_/, '-')
  end

  def sort_ingredients(ingredients)
    ingredients.sort_by { |name, amount, unit| name }
  end

  def pluralize_ingredient(i)
    if i.unit 
      %Q|<div class="measurement">#{pluralize(i.numeric_amount, i.unit)}</div>
         <div class="name">#{i.name}</div>|
    else
      if i.name.split.count > 1
        %Q|<div class="measurement">#{i.numeric_amount}</div>
          <div class="name">#{i.name}</div>|
      else
        %Q|<div class="measurement">#{i.numeric_amount}</div>
          <div class="name">#{i.name.pluralize(i.numeric_amount)}</div>|
      end
    end
  end

end
