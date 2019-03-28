class StatusPedido < EnumerateIt::Base
  associate_values(
    :submetido,
    :avaliacao,
    :licitacao,
    :realizado,
    :entrega,
    :entregue,
    :rejeitado
  )
end
