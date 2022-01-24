defmodule Mastery.Core.Votos do
  alias Mastery.Core.Player
  defstruct ~w[id vote timestamp]a
  @moduledoc """
  Documentation for `Votos`.
  """

  @doc """
    Returns a new Vote struct
  """
  @spec new(String.t(),%Mastery.Core.Player{name: String.t()}) :: struct()
  def new(email,%Player{} = player) do
    pick = player.name

    %__MODULE__{
        id: email,
        vote: pick,
        timestamp: DateTime.utc_now()
      }
  end
 @doc """
    Changes vote field in Vote struct
  """
  @spec change_vote(%Mastery.Core.Votos{:id => String,vote: String,timestamp: DateTime}, %Mastery.Core.Player{name: String}) :: struct()
  def change_vote(%Mastery.Core.Votos{} = original_map,%Player{} = new_pick) do
    %{ original_map | vote: new_pick}
  end


  
end
