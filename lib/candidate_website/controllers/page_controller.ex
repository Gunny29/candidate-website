defmodule CandidateWebsite.PageController do
  use CandidateWebsite, :controller
  plug(CandidateWebsite.RequirePlug)

  def index(conn, params) do
    %{name: name, district: district, big_picture: big_picture} = Map.get(conn.assigns, :data)
    assigns = conn.assigns.data
    render(conn, "index.html", Enum.into(assigns, []))
  end
end
