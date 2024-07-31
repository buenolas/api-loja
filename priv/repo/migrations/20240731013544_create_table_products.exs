defmodule Loja.Repo.Migrations.CreateTableProducts do
  use Ecto.Migration

  #criação da tabela no banco de dados
  def change do
    create table("products") do
      add :title, :string
      add :description, :text
      add :price, :integer, default: 0

      timestamps()
    end
  end
end
