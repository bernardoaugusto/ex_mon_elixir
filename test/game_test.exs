defmodule ExMon.GameTest do
  use ExUnit.Case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = Player.build("Bernardo", :punch, :kick, :heal)
      computer = Player.build("Robotinick", :punch, :kick, :heal)

      assert {:ok, _pid} = Game.start(computer, player)
    end
  end
end
