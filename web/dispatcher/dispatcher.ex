defmodule TwitterUpdater.Dispatcher do
  import ExTwitter

  def publish(status) do
    ExTwitter.update(status)
  end

  def destroy(id) do
    ExTwitter.destroy_status(id)
  end
end
