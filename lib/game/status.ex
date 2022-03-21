defmodule ExMon.Game.Status do
  def print_round_message() do
    alias ExMon.Game

    IO.puts("\n===== The game is started! =====\n")
    IO.inspect(Game.info())
    IO.puts("----------------------")
  end
end
