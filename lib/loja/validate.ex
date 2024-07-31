defmodule Loja.Validate do
  @moduledoc false

  def get_required(params, field) do
    case params[field] do
      nil -> {:error, "o campo `#{field}` não existe ou é nulo"}
      value -> {:ok, value}
    end
  end

  def is_integer(value, field) do
    case Integer.parse(value) do
      {num, ""} -> {:ok, num}
      _ -> {:error, "#{field}: O valor não é inteiro"}
    end
  end
end
