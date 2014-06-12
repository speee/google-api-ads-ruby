# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:46:00.

require 'ads_common/savon_service'
require 'dfp_api/v201405/forecast_service_registry'

module DfpApi; module V201405; module ForecastService
  class ForecastService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201405'
      super(config, endpoint, namespace, :v201405)
    end

    def get_forecast(*args, &block)
      return execute_action('get_forecast', args, &block)
    end

    def get_forecast_by_id(*args, &block)
      return execute_action('get_forecast_by_id', args, &block)
    end

    private

    def get_service_registry()
      return ForecastServiceRegistry
    end

    def get_module()
      return DfpApi::V201405::ForecastService
    end
  end
end; end; end
