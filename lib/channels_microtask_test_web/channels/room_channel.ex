defmodule ChannelsMicrotaskTestWeb.RoomChannel do
  use Phoenix.Channel

  def join("topic:subtopic", _message, socket) do
    send self(), "yay"
    {:ok, socket}
  end

  def handle_info("yay", socket) do
    :ok = push(socket, "test_event", %{})
    {:noreply, socket}
  end

end
