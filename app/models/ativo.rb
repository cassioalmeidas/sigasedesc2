class Ativo < ApplicationRecord
  belongs_to :unidade, optional: true
  belongs_to :especificacao_ativo
  accepts_nested_attributes_for :especificacao_ativo
  validates :numero_patrimonial, uniqueness: true, numericality: { :greater_than_to => 0 }, allow_blank: true


  def to_s
    especificacao_ativo
  end


end
