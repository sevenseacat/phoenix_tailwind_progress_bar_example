import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_tailwind_progress_bar_example, PhoenixTailwindProgressBarExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "MjQz6AldO6YQ0o8GSyIEAAglcyf+780EpvcdyNPtBpVZ3Uox7lq+nnpl6l3o8XjK",
  server: false

# In test we don't send emails
config :phoenix_tailwind_progress_bar_example, PhoenixTailwindProgressBarExample.Mailer,
  adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
