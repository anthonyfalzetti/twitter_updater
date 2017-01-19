defmodule TwitterUpdater.DispatcherTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import TwitterUpdater.Factory
  alias TwitterUpdater.{Repo, Dispatcher}

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
    :ok = Ecto.Adapters.SQL.Sandbox.mode(Repo, {:shared, self()})

    {:ok, %{quote: insert(:quote)}}
  end

  test "dispatch and destroy tweat", %{quote: quote} do
    use_cassette "dispatch__and_destroy_tweet" do
      tweet1 = Dispatcher.publish(quote.status)
      assert tweet1.text == quote.status

      tweet2 = Dispatcher.destroy(tweet1.id)
      assert tweet2.text == quote.status
    end
  end
end
