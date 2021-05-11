defmodule ChannelsMicrotaskTest.Repo do
  use Ecto.Repo,
    otp_app: :channels_microtask_test,
    adapter: Ecto.Adapters.Postgres
end
