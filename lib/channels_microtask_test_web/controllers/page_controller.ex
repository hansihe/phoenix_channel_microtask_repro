defmodule ChannelsMicrotaskTestWeb.PageController do
  use ChannelsMicrotaskTestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
