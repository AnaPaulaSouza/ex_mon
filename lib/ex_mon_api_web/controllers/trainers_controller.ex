defmodule ExMonApiWeb.TrainersController do
  use ExMonApiWeb, :controller

  alias ExMonApi.Trainer.Create

  def create(conn, params) do
    params
    |> ExMonApi.create_trainer()
    |> handle_response(conn)
  end

  defp handle_response({:ok, trainer}, conn) do
    conn
    |> put_status(:ok)
    |> render("create.json", trainer: trainer)
  end

#  defp handle_response() do:

end