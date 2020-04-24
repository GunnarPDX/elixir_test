defmodule TestAppTest do
  use ExUnit.Case
  doctest TestApp

  test "greets the world" do
    assert TestApp.hello() == :world
  end

  test "randomise" do
    zoo = TestApp.create_zoo
    assert zoo != TestApp.randomise(zoo)
  end

  
end
