defmodule PhoenixTailwindProgressBarExampleWeb.DemoLive do
  use PhoenixTailwindProgressBarExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div id="demo-live">
      <div :for={value <- 10..100//10} class="mt-4 h-4 w-full">
        <progress value={value} max="100" class="h-full w-full" />
      </div>
    </div>
    """
  end
end
