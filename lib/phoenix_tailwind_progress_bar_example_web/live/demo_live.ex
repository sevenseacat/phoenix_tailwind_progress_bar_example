defmodule PhoenixTailwindProgressBarExampleWeb.DemoLive do
  use PhoenixTailwindProgressBarExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, foreground: "red", background: "purple")}
  end

  def render(assigns) do
    ~H"""
    <div id="demo-live">
      <div :for={value <- 10..100//10} class="mt-4 h-4 w-full">
        <div class="h-full w-full bg-slate-100 rounded-full">
          <progress
            value={value}
            max="100"
            class={[
              "h-full w-full align-top appearance-none rounded-full",
              "filled:rounded-full unfilled:bg-slate-100 animate-[size_2s_ease-out]",
              temperature(value)
            ]}
          />
        </div>
      </div>
    </div>
    """
  end

  def temperature(val) do
    case val do
      val when val <= 20 ->
        "filled:bg-red-500"

      val when val in 21..40 ->
        "filled:animate-[orange_2s_ease-out] filled:bg-orange-500"

      val when val in 41..60 ->
        "filled:animate-[yellow_2s_ease-out] filled:bg-yellow-500"

      val when val in 61..80 ->
        "filled:animate-[lime_2s_ease-out] filled:bg-lime-500"

      _ ->
        "filled:animate-[green_2s_ease-out] filled:bg-green-500"
    end
  end
end
