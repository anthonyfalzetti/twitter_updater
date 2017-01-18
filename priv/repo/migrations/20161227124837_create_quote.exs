defmodule TwitterUpdater.Repo.Migrations.CreateQuote do
  use Ecto.Migration

  def change do
    create table(:quotes) do
      add :status, :string

      timestamps()
    end

  end
end
