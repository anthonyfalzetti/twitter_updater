defmodule TwitterUpdater.Dispatcher do

  def publish(status) do
    ExTwitter.update(status)
  end

  def destroy(id) do
    ExTwitter.destroy_status(id)
  end
end
