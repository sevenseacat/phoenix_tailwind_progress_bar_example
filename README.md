# Phoenix LiveView and component flash message example

An example of how to use the HTML `progress` element and TailwindCSS, to make nicely styled progress components that don't violate content security policies!

I wrote more about this in a blog post, [Dynamic HTML progress bars with TailwindCSS](https://sevenseacat.net/posts/2024/dynamic-html-progress-bars-with-tailwindcss/).

## Setup

```
git clone https://github.com/sevenseacat/phoenix_tailwind_progress_bar_example.git
cd phoenix_tailwind_progress_bar_example
mix deps.get
```

## Run

```
mix phx.server
```

And you can visit the default homepage at http://localhost:4000.

Check out the TailwindCSS config in `assets/tailwind.config.js`, and the the LiveView in `/lib/phoenix_tailwind_progress_bar_example/live/demo_live.ex` to see how it all hangs together! ✨
