defmodule ExMonApi.Trainer.Create do
  alias ExMonApi.{Trainer, Repo}

  def call(conn, params) do
    params
    |> Trainer.build()
    |> create_trainer()
  end

  defp create_trainer({:ok, struct}), do: Repo.insert(struct)
  defp create_trainer({:error, changeset} = error), do: error
end