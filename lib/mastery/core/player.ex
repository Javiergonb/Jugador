defmodule Mastery.Core.Player do

  defstruct ~w[name]a
  @moduledoc """
  Documentation for `Votos`.
  """

  @doc """
    Returns a new Player
  """
  @spec new(String.t() ) :: struct()

  def new(name) do
    %__MODULE__{
      name: name
    }
  end

end
