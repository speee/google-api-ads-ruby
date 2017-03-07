# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.6 on 2016-11-14 09:03:36.

require 'ads_common/savon_service'
require 'dfp_api/v201611/mobile_application_service_registry'

module DfpApi; module V201611; module MobileApplicationService
  class MobileApplicationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201611'
      super(config, endpoint, namespace, :v201611)
    end

    def create_mobile_applications(*args, &block)
      return execute_action('create_mobile_applications', args, &block)
    end

    def create_mobile_applications_to_xml(*args)
      return get_soap_xml('create_mobile_applications', args)
    end

    def get_mobile_applications_by_statement(*args, &block)
      return execute_action('get_mobile_applications_by_statement', args, &block)
    end

    def get_mobile_applications_by_statement_to_xml(*args)
      return get_soap_xml('get_mobile_applications_by_statement', args)
    end

    def perform_mobile_application_action(*args, &block)
      return execute_action('perform_mobile_application_action', args, &block)
    end

    def perform_mobile_application_action_to_xml(*args)
      return get_soap_xml('perform_mobile_application_action', args)
    end

    def update_mobile_applications(*args, &block)
      return execute_action('update_mobile_applications', args, &block)
    end

    def update_mobile_applications_to_xml(*args)
      return get_soap_xml('update_mobile_applications', args)
    end

    private

    def get_service_registry()
      return MobileApplicationServiceRegistry
    end

    def get_module()
      return DfpApi::V201611::MobileApplicationService
    end
  end
end; end; end
