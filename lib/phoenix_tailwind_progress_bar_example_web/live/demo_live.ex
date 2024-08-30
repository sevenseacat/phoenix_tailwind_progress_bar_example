defmodule PhoenixTailwindProgressBarExampleWeb.DemoLive do
  use PhoenixTailwindProgressBarExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, foreground: "red", background: "purple")}
  end

  def render(assigns) do
    ~H"""
    <div id="demo-live">
      <div :for={value <- 10..100//10} class="mt-4 h-4 w-full">
        <progress
          value={value}
          max="100"
          class={
            [
              "h-full w-full align-top appearance-none rounded-full hover:scale-y-150",
              # Filled styles
              "filled:rounded-full filled:animate-pulse filled:bg-gradient-to-r",
              "filled:from-indigo-500 filled:via-purple-500 filled:to-pink-500",
              # Filled hover styles
              "filled:hover:animate-none filled:hover:from-cyan-500",
              "filled:hover:via-sky-500 filled:hover:to-green-500",
              # Unfilled styles
              "unfilled:bg-slate-100"
            ]
          }
        />
      </div>
    </div>
    """
  end
end
