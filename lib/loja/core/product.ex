defmodule Loja.Core.Product do
  @moduledoc false

  use Ecto.Schema

  #mapear a informação do banco para o elixir, criar a entidade
  schema "products" do
    field :title, :string
    field :description, :string
    field :price, :integer

    #inserted_at e updated_at
    timestamps()
  end
  
  def permission(:public), do: [:id, :title, :description, :price, :inserted_at, :updated_at]

  def changeset(model, params) do
    model
    |> Ecto.Changeset.cast(params, [:title, :description, :price])
    |> Ecto.Changeset.validate_required([:title, :description])
  end

end
