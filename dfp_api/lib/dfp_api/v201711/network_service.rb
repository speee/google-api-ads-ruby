# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.0 on 2017-10-13 16:16:17.

require 'ads_common/savon_service'
require 'dfp_api/v201711/network_service_registry'

module DfpApi; module V201711; module NetworkService
  class NetworkService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201711'
      super(config, endpoint, namespace, :v201711)
    end

    def get_all_networks(*args, &block)
      return execute_action('get_all_networks', args, &block)
    end

    def get_all_networks_to_xml(*args)
      return get_soap_xml('get_all_networks', args)
    end

    def get_current_network(*args, &block)
      return execute_action('get_current_network', args, &block)
    end

    def get_current_network_to_xml(*args)
      return get_soap_xml('get_current_network', args)
    end

    def make_test_network(*args, &block)
      return execute_action('make_test_network', args, &block)
    end

    def make_test_network_to_xml(*args)
      return get_soap_xml('make_test_network', args)
    end

    def update_network(*args, &block)
      return execute_action('update_network', args, &block)
    end

    def update_network_to_xml(*args)
      return get_soap_xml('update_network', args)
    end

    private

    def get_service_registry()
      return NetworkServiceRegistry
    end

    def get_module()
      return DfpApi::V201711::NetworkService
    end
  end
end; end; end
