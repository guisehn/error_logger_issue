# How to reproduce

This assumes you're using `asdf` to manage Elixir and Erlang installations.

## On Elixir 1.15

1. `asdf install`
2. `iex -S mix run`
3. `Task.async(fn -> raise "foo" end)`

Notice that `ERROR HANDLER CALLED` will not appear on the console, as `ErrorHandler` is not called.

## On Elixir 1.14

1. update `.tool-versions` to use `elixir 1.14.5-otp-25`
1. `asdf install`
3. `iex -S mix run`
4. `Task.async(fn -> raise "foo" end)`

Notice that `ERROR HANDLER CALLED` will appear on the console, as `ErrorHandler` is called.
