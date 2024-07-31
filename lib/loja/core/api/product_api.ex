defmodule Loja.Core.Api.Product.Api do
  @moduledoc false

  alias Loja.Repo
  alias Loja.Core.Product

  import Ecto.Query

  ##all
  def all do
    {:ok, Repo.all(Product)}
  end

  ##get
  def get(id) do
    Repo.get(Product, id)
    |> case do
      nil -> {:error, :not_found}
      product -> {:ok, product}
    end
  end
  ##get_by
  def get_by(where) do
    from(Product)
    |> where(^where)
    |> Repo.one()
  end

  ##insert
  def insert(params) do
    %Product{}
    |> Product.changeset(params)
    |> Repo.insert()
  end

  ##update
  def update(model, params) do
    model
    |> Product.changeset(params)
    |> Repo.update()
  end

  ##delete
  def delete(id) do
    case get(id) do
      {:ok, product} -> Repo.delete(product)
      error -> error
    end
  end

  def json!(model, permission) do
    Map.take(model, Product.permission(permission))
  end
end
