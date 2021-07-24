module ApplicationHelper
  def nav_link(text, path="#")
    options = current_page?(path) ? { class: 'nav-link active', aria: { current: 'page' } } : { class: 'nav-link' }
    content_tag(:li) do 
      link_to(path, options) do 
        text.html_safe
      end
    end
  end
end
