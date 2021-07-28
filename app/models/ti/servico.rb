class Ti::Servico < ApplicationRecord
  validates :nome, presence: true

  def detalhes
    desc = descricao.present? ? descricao : 'Sem mais descrições.'
    %{
      <h4>#{nome}</h4>
      <p>#{desc}</p>
    }
  end
end
