defmodule TwitterUpdater.Factory do
  import Faker
  use ExMachina.Ecto, repo: TwitterUpdater.Repo
  alias TwitterUpdater.Quote

  def quote_factory do
    %Quote{
      status: Faker.Lorem.Shakespeare.romeo_and_juliet()
    }
  end
end
