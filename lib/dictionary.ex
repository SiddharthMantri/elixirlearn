
defmodule Dictionary do
  def hello do
    IO.puts "Hello World!"
  end
  def random_word() do
    word_list()
    |>  Enum.random()
  end
  
  def word_list do
    "assets/words.txt"
    |>  File.read!() ## Same as File.read!("file.txt")
    |>  String.split(~r/\n/)
  end
end
