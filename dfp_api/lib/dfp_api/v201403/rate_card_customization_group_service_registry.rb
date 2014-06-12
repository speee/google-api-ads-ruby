# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:45:31.

require 'dfp_api/errors'

module DfpApi; module V201403; module RateCardCustomizationGroupService
  class RateCardCustomizationGroupServiceRegistry
    RATECARDCUSTOMIZATIONGROUPSERVICE_METHODS = {:create_rate_card_customization_groups=>{:input=>[{:name=>:rate_card_customization_groups, :type=>"RateCardCustomizationGroup", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_rate_card_customization_groups_response", :fields=>[{:name=>:rval, :type=>"RateCardCustomizationGroup", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_rate_card_customization_groups_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_rate_card_customization_groups_by_statement_response", :fields=>[{:name=>:rval, :type=>"RateCardCustomizationGroupPage", :min_occurs=>0, :max_occurs=>1}]}}, :update_rate_card_customization_groups=>{:input=>[{:name=>:rate_card_customization_groups, :type=>"RateCardCustomizationGroup", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_rate_card_customization_groups_response", :fields=>[{:name=>:rval, :type=>"RateCardCustomizationGroup", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    RATECARDCUSTOMIZATIONGROUPSERVICE_TYPES = {:AdUnitRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Authentication=>{:fields=>[{:name=>:authentication_type, :original_name=>"Authentication.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BandwidthRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :BrowserRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :BrowserLanguageRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomTargetingRateCardFeature=>{:fields=>[{:name=>:custom_targeting_key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_targeting_value_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"RateCardFeature"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FrequencyCapRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :GeographyRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :OperatingSystemRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PlacementRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateCardCustomizationGroup=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_card_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:pricing_method, :type=>"PricingMethod", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_card_feature, :type=>"RateCardFeature", :min_occurs=>0, :max_occurs=>1}]}, :RateCardCustomizationGroupError=>{:fields=>[{:name=>:reason, :type=>"RateCardCustomizationGroupError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateCardCustomizationGroupPage=>{:fields=>[{:name=>:results, :type=>"RateCardCustomizationGroup", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :RateCardFeature=>{:fields=>[{:name=>:rate_card_feature_type, :original_name=>"RateCardFeature.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UnknownRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :UserDomainRateCardFeature=>{:fields=>[], :base=>"RateCardFeature"}, :Value=>{:fields=>[{:name=>:value_type, :original_name=>"Value.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"ApiVersionError.Reason"=>{:fields=>[]}, :PricingMethod=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RateCardCustomizationGroupError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}}
    RATECARDCUSTOMIZATIONGROUPSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return RATECARDCUSTOMIZATIONGROUPSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return RATECARDCUSTOMIZATIONGROUPSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return RATECARDCUSTOMIZATIONGROUPSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, RateCardCustomizationGroupServiceRegistry)
    end
  end
end; end; end
