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

  describe "info/0" do
    test "returns current game state" do
      player = Player.build("Bernardo", :punch, :kick, :heal)
      computer = Player.build("Robotinick", :punch, :kick, :heal)

      Game.start(computer, player)

      expected_response = %{
        computer: %ExMon.Player{
          life: 100,
          moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
          name: "Robotinick"
        },
        player: %ExMon.Player{
          life: 100,
          moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
          name: "Bernardo"
        },
        status: :started,
        turn: :player
      }

      assert expected_response == Game.info()
    end
  end
end
