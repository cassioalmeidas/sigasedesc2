json.extract! manutencao, :id, :situacao, :ativo_id, :tecnico_recebeu_id, :data_conclusao, :data_entrega, :responsavel_recebimento, :created_at, :updated_at
json.url manutencao_url(manutencao, format: :json)
