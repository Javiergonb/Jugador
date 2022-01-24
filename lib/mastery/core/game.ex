defmodule Mastery.Core.Game do

  defstruct ~w[id topplayer players votes numberofvotes]a

  alias Mastery.Core.Player
  alias Mastery.Core.Game
  alias Mastery.Core.Votos
  @moduledoc """
  Documentation for `Game`.
  """

  @doc """
    Creates a new Game
  """
  @spec new(String) :: struct()
  def new(id) do
    %__MODULE__{
      id: id,
      topplayer: nil,
      players: [],
      votes: [],
      numberofvotes: 0
      }
  end

  @doc """
    Adds a player to the game, adds it to the p¿layer list
  """
  @spec add_player_to_game(%Player{}, %Game{}) :: %Game{}
  def add_player_to_game(%Player{} = player,%Game{} = game) do
    %{game | players: [player | game.players]}
  end


  @doc """
    Adds a vote struct to the vote list
  """
  @spec add_vote(%Votos{}, %Game{}) :: %Game{}
  def add_vote(%Votos{} = vote,%Game{} = game) do
    %{game | votes: [vote | game.votes]}
  end



   @doc """
    Counts the number of votes in the vote list
  """
  @spec count_number_of_votes( %Game{}) :: %Game{}
  def count_number_of_votes(%Game{}=game) do
    count =
    game.votes
    |> Enum.count()

    %{game | numberofvotes: count}
  end
  @doc """
    Calculates the top ranking player in terms of votes
  """
  @spec calculate_top_player(%Game{}) :: Player
  def calculate_top_player(%Game{}=game) do
    top_player = game.players
    |> ranking()
    |> Map.get()
  end
  @doc """
    Returns a the ranking of the players by votes
  """
  @spec ranking(List) :: Map
  defp ranking(players) do
    #will rank players
  end



end
