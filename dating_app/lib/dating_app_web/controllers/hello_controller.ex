defmodule DatingAppWeb.HelloController do
  use DatingAppWeb, :controller

  def index(conn, _params) do
    #text(conn, "Hello, World!")
    render(conn, "index.html")
  end
end
