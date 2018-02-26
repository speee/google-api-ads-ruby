# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.14.2 on 2017-08-09 17:59:39.

require 'ads_common/savon_service'
require 'adwords_api/v201708/draft_async_error_service_registry'

module AdwordsApi; module V201708; module DraftAsyncErrorService
  class DraftAsyncErrorService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201708'
      super(config, endpoint, namespace, :v201708)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def query(*args, &block)
      return execute_action('query', args, &block)
    end

    def query_to_xml(*args)
      return get_soap_xml('query', args)
    end

    private

    def get_service_registry()
      return DraftAsyncErrorServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201708::DraftAsyncErrorService
    end
  end
end; end; end
