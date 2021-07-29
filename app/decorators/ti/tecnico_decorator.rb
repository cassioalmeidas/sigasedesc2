class Ti::TecnicoDecorator < ApplicationDecorator
  include Draper::LazyHelpers
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def modal_links
    links = []
    links << link_to('Editar', edit_ti_tecnico_path(object), class: 'btn btn-primary')
    safe_join(links, '')
  end

end
