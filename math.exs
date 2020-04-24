
defmodule Math do
  
  def add(a, b) do
    recieve do
      senders_pid ->
        send(senders_pid, a + b)
    end
  end

  def double(n) do
    spawn(Math, :add, [n,n])
    |> send(self())

    recieve do
      doubled ->
        doubled
    end
  end

end
