defmodule ErrorHandler do
  @behaviour :gen_event

  def init([]), do: {:ok, []}

  def handle_call(_, state), do: {:ok, state}

  def handle_event(args, state) do
    IO.inspect(args, label: "ERROR HANDLER CALLED")
    {:ok, state}
  end
end

# :error_logger.add_report_handler(TestLogger)

# def handle_call({:configure, new_keys}, _state) do
#   {:ok, :ok, new_keys}
# end

# def handle_event({_level, gl, _event}, state)
#     when node(gl) != node() do
#   IO.puts("================> HANDLE_EVENT 1")
#   {:ok, state}
# end

# def handle_event({:error_report, _gl, {_pid, _type, [message | _]}}, state)
#     when is_list(message) do
#   IO.puts("================> HANDLE_EVENT 2")
#   IO.inspect(message, label: "= msg =")
#   {:ok, state}
# end
