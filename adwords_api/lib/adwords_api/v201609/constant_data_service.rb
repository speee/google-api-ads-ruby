# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.4 on 2016-09-30 10:57:21.

require 'ads_common/savon_service'
require 'adwords_api/v201609/constant_data_service_registry'

module AdwordsApi; module V201609; module ConstantDataService
  class ConstantDataService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201609'
      super(config, endpoint, namespace, :v201609)
    end

    def get_age_range_criterion(*args, &block)
      return execute_action('get_age_range_criterion', args, &block)
    end

    def get_age_range_criterion_to_xml(*args)
      return get_soap_xml('get_age_range_criterion', args)
    end

    def get_carrier_criterion(*args, &block)
      return execute_action('get_carrier_criterion', args, &block)
    end

    def get_carrier_criterion_to_xml(*args)
      return get_soap_xml('get_carrier_criterion', args)
    end

    def get_gender_criterion(*args, &block)
      return execute_action('get_gender_criterion', args, &block)
    end

    def get_gender_criterion_to_xml(*args)
      return get_soap_xml('get_gender_criterion', args)
    end

    def get_language_criterion(*args, &block)
      return execute_action('get_language_criterion', args, &block)
    end

    def get_language_criterion_to_xml(*args)
      return get_soap_xml('get_language_criterion', args)
    end

    def get_mobile_app_category_criterion(*args, &block)
      return execute_action('get_mobile_app_category_criterion', args, &block)
    end

    def get_mobile_app_category_criterion_to_xml(*args)
      return get_soap_xml('get_mobile_app_category_criterion', args)
    end

    def get_mobile_device_criterion(*args, &block)
      return execute_action('get_mobile_device_criterion', args, &block)
    end

    def get_mobile_device_criterion_to_xml(*args)
      return get_soap_xml('get_mobile_device_criterion', args)
    end

    def get_operating_system_version_criterion(*args, &block)
      return execute_action('get_operating_system_version_criterion', args, &block)
    end

    def get_operating_system_version_criterion_to_xml(*args)
      return get_soap_xml('get_operating_system_version_criterion', args)
    end

    def get_product_bidding_category_data(*args, &block)
      return execute_action('get_product_bidding_category_data', args, &block)
    end

    def get_product_bidding_category_data_to_xml(*args)
      return get_soap_xml('get_product_bidding_category_data', args)
    end

    def get_user_interest_criterion(*args, &block)
      return execute_action('get_user_interest_criterion', args, &block)
    end

    def get_user_interest_criterion_to_xml(*args)
      return get_soap_xml('get_user_interest_criterion', args)
    end

    def get_vertical_criterion(*args, &block)
      return execute_action('get_vertical_criterion', args, &block)
    end

    def get_vertical_criterion_to_xml(*args)
      return get_soap_xml('get_vertical_criterion', args)
    end

    private

    def get_service_registry()
      return ConstantDataServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201609::ConstantDataService
    end
  end
end; end; end
