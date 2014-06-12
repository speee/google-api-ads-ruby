# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:41:59.

require 'ads_common/savon_service'
require 'dfp_api/v201302/creative_set_service_registry'

module DfpApi; module V201302; module CreativeSetService
  class CreativeSetService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201302'
      super(config, endpoint, namespace, :v201302)
    end

    def create_creative_set(*args, &block)
      return execute_action('create_creative_set', args, &block)
    end

    def get_creative_set(*args, &block)
      return execute_action('get_creative_set', args, &block)
    end

    def get_creative_sets_by_statement(*args, &block)
      return execute_action('get_creative_sets_by_statement', args, &block)
    end

    def update_creative_set(*args, &block)
      return execute_action('update_creative_set', args, &block)
    end

    private

    def get_service_registry()
      return CreativeSetServiceRegistry
    end

    def get_module()
      return DfpApi::V201302::CreativeSetService
    end
  end
end; end; end
