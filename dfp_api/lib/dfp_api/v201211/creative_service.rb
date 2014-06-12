# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:40:58.

require 'ads_common/savon_service'
require 'dfp_api/v201211/creative_service_registry'

module DfpApi; module V201211; module CreativeService
  class CreativeService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201211'
      super(config, endpoint, namespace, :v201211)
    end

    def create_creative(*args, &block)
      return execute_action('create_creative', args, &block)
    end

    def create_creatives(*args, &block)
      return execute_action('create_creatives', args, &block)
    end

    def get_creative(*args, &block)
      return execute_action('get_creative', args, &block)
    end

    def get_creatives_by_statement(*args, &block)
      return execute_action('get_creatives_by_statement', args, &block)
    end

    def update_creative(*args, &block)
      return execute_action('update_creative', args, &block)
    end

    def update_creatives(*args, &block)
      return execute_action('update_creatives', args, &block)
    end

    private

    def get_service_registry()
      return CreativeServiceRegistry
    end

    def get_module()
      return DfpApi::V201211::CreativeService
    end
  end
end; end; end
