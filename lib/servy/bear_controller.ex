defmodule Servy.BearController do

  alias Servy.Wildthings
  alias Servy.Bear

  import Servy.View, only: [render: 1]

  def index(conv) do
    bears =
      Wildthings.list_bears()
      |> Enum.sort(&Bear.order_ascending_by_name(&1, &2))
    render(conv, "index.eex", [bears: bears])
  end

  def show(conv, %{"id" => id}) do
    bear = Wildthings.get_bear(id)
    render(conv, "show.eex", [bear: bear])
  end

  def create(conv, %{"name" => name, "type" => type}) do
    %{ conv | status: 201,
              resp_body: "Created a #{type} bear named #{name}!" }
  end
end
