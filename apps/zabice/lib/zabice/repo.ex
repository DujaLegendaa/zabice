defmodule Zabice.Repo do
  use Ecto.Repo,
    otp_app: :zabice,
    adapter: Ecto.Adapters.SQLite3
end
