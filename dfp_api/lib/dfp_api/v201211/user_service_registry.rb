# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:41:16.

require 'dfp_api/errors'

module DfpApi; module V201211; module UserService
  class UserServiceRegistry
    USERSERVICE_METHODS = {:create_user=>{:input=>[{:name=>:user, :type=>"User", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :create_users=>{:input=>[{:name=>:users, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_users_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_all_roles=>{:input=>[], :output=>{:name=>"get_all_roles_response", :fields=>[{:name=>:rval, :type=>"Role", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_current_user=>{:input=>[], :output=>{:name=>"get_current_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :get_user=>{:input=>[{:name=>:user_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :get_users_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_users_by_statement_response", :fields=>[{:name=>:rval, :type=>"UserPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_user_action=>{:input=>[{:name=>:user_action, :type=>"UserAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_user_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_user=>{:input=>[{:name=>:user, :type=>"User", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_user_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>1}]}}, :update_users=>{:input=>[{:name=>:users, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_users_response", :fields=>[{:name=>:rval, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    USERSERVICE_TYPES = {:ActivateUsers=>{:fields=>[], :base=>"UserAction"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Authentication=>{:fields=>[{:name=>:authentication_type, :original_name=>"Authentication.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateUsers=>{:fields=>[], :base=>"UserAction"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidEmailError=>{:fields=>[{:name=>:reason, :type=>"InvalidEmailError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Role=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :UserAction=>{:fields=>[{:name=>:user_action_type, :original_name=>"UserAction.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :User=>{:fields=>[{:name=>:is_active, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_email_notification_allowed, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:orders_ui_local_time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"UserRecord"}, :UserPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"User", :min_occurs=>0, :max_occurs=>:unbounded}]}, :UserRecord=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:role_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:role_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:preferred_locale, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_record_type, :original_name=>"UserRecord.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :original_name=>"Value.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidEmailError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}}
    USERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return USERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return USERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return USERSERVICE_NAMESPACES[index]
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
      super(exception_fault, UserServiceRegistry)
    end
  end
end; end; end
