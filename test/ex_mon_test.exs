defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias ExMon.Player

  describe "create_player/4" do
    test "returns a player" do
      expected_response = %Player{
        life: 100,
        moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
        name: "Bernardo"
      }

      assert expected_response == ExMon.create_player("Bernardo", :punch, :kick, :heal)
    end
  end

  # describe "start_game/1" do
  #   test "when the game starded, returns a message" do
  #     player = Player.build("Bernardo", :punch, :kick, :heal)

  #     messages =
  #       capture_io(fn ->
  #         assert ExMon.start_game(player) == :ok
  #       end)

  #     assert messages =~ "The game is started!"
  #     assert messages =~ "status: :started"
  #     assert messages =~ "turn: :player"
  #   end
  # end
end
