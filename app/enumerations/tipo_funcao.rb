class TipoFuncao < EnumerateIt::Base
  associate_values(
    :professor,
    :coordenador,
    :admin,
    :licitador
  )
end
