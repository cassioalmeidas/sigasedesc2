class Servico < ApplicationRecord
  acts_as_paranoid
  validates :nome, presence: true

  def detalhes
    desc = descricao.present? ? descricao : 'Sem mais descrições.'
    %{
      <h4>#{nome}</h4>
      <p>#{desc}</p>
    }
  end
end
