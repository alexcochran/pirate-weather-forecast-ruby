# frozen_string_literal: true

module ForecastIO
  module Configuration
    # Default API endpoint
    DEFAULT_FORECAST_IO_API_ENDPOINT = "https://api.pirateweather.net"

    # Forecast API endpoint
    attr_writer :api_endpoint

    # API key
    attr_writer :api_key

    # Request read timeout
    attr_writer :timeout

    # Default parameters
    attr_accessor :default_params

    # Yield self to be able to configure ForecastIO with block-style configuration.
    #
    # Example:
    #
    #   ForecastIO.configure do |configuration|
    #     configuration.api_key = 'this-is-your-api-key'
    #     configuration.timeout = 500
    #   end
    def configure
      yield self
    end

    # API endpoint
    def api_endpoint
      @api_endpoint ||= DEFAULT_FORECAST_IO_API_ENDPOINT
    end

    # API key
    def api_key
      @api_key
    end

    # Request read timeout
    def timeout
      @timeout
    end
  end
end
