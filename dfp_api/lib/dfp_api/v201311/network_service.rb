# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:44:29.

require 'ads_common/savon_service'
require 'dfp_api/v201311/network_service_registry'

module DfpApi; module V201311; module NetworkService
  class NetworkService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201311'
      super(config, endpoint, namespace, :v201311)
    end

    def get_all_networks(*args, &block)
      return execute_action('get_all_networks', args, &block)
    end

    def get_current_network(*args, &block)
      return execute_action('get_current_network', args, &block)
    end

    def make_test_network(*args, &block)
      return execute_action('make_test_network', args, &block)
    end

    def update_network(*args, &block)
      return execute_action('update_network', args, &block)
    end

    private

    def get_service_registry()
      return NetworkServiceRegistry
    end

    def get_module()
      return DfpApi::V201311::NetworkService
    end
  end
end; end; end
