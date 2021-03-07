defmodule ExMonApi do
  alias ExMonApi.Trainer

  defdelegate create_trainer(params), to: Trainer.Create, as: :call
  defdelegate delete_trainer(params), to: Trainer.Delete, as: :call
  defdelegate fetch_trainer(params), to: Trainer.Get, as: :call
  defdelegate show_trainer(params), to: Trainer.Show, as: :call

end
