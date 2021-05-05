defmodule ChatterWeb.ChatRoomController do
  use ChatterWeb, :controller
  alias Chatter.Chat

  def index(conn, _params) do
    chat_rooms = Chat.all_rooms()

    render(conn, "index.html", chat_rooms: chat_rooms)
  end

end
