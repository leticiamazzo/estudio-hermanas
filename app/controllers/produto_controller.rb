class ProdutoController < ApplicationController
  def index
    # pega todos os produtos e lista
    @produtos = Produto.all
  end
end
