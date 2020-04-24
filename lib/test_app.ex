defmodule TestApp do
  @moduledoc """
  Documentation for `TestApp`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TestApp.hello()
      :world

  """
  def hello do
    :world
  end

  def create_zoo do
    ["lion", "tiger", "gorilla", "elephant", "monkey", "giraffe"]
  end

  def randomise(zoo) do
    Enum.shuffle(zoo)
  end

  def contains?(zoo, animal) do
    Enum.member?(zoo, animal)
  end

  def see_animals(zoo, count) do
    {_seen, to_see} = Enum.spilt(zoo, -count)
    to_see
  end

  def save(zoo, filename) do
    binary = :erlang.term_to_binary(zoo)
    File.write(filename, binary)
  end


end













