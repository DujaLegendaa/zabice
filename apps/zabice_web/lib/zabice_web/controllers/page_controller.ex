defmodule ZabiceWeb.PageController do
  use ZabiceWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
