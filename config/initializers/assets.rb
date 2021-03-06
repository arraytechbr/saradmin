# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

%w(
  enderecos  grupos  membros tipo_contribuicoes  cargos  contribuicoes  equipes  hierarquia  redes
  users  celulas dashboard  foos  igrejas  sub_equipes  usuarios celulas_membros reports/ultima_contribuicao
  reports/contribuicao_anual reports/membros_contribuicoes
  ).each do |controller|
  Rails.application.config.assets.precompile += ["#{controller}.js.coffee", "#{controller}.css"]
end

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
