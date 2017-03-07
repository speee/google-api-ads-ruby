# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-05-30 12:51:33.

require 'adwords_api/errors'

module AdwordsApi; module V201605; module ManagedCustomerService
  class ManagedCustomerServiceRegistry
    MANAGEDCUSTOMERSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_pending_invitations=>{:input=>[{:name=>:selector, :type=>"PendingInvitationSelector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_pending_invitations_response", :fields=>[{:name=>:rval, :type=>"PendingInvitation", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"ManagedCustomerOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_label=>{:input=>[{:name=>:operations, :type=>"ManagedCustomerLabelOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_label_response", :fields=>[{:name=>:rval, :type=>"ManagedCustomerLabelReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_link=>{:input=>[{:name=>:operations, :type=>"LinkOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_link_response", :fields=>[{:name=>:rval, :type=>"MutateLinkResults", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_manager=>{:input=>[{:name=>:operations, :type=>"MoveOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_manager_response", :fields=>[{:name=>:rval, :type=>"MutateManagerResults", :min_occurs=>0, :max_occurs=>1}]}}}
    MANAGEDCUSTOMERSERVICE_TYPES = {:AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException", :ns=>0}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :"AuthenticationError.Reason"=>{:fields=>[], :ns=>0}, :"AuthorizationError.Reason"=>{:fields=>[], :ns=>0}, :"ClientTermsError.Reason"=>{:fields=>[], :ns=>0}, :"DatabaseError.Reason"=>{:fields=>[], :ns=>0}, :"DateError.Reason"=>{:fields=>[], :ns=>0}, :"DistinctError.Reason"=>{:fields=>[], :ns=>0}, :"IdError.Reason"=>{:fields=>[], :ns=>0}, :"InternalApiError.Reason"=>{:fields=>[], :ns=>0}, :"NotEmptyError.Reason"=>{:fields=>[], :ns=>0}, :"NullError.Reason"=>{:fields=>[], :ns=>0}, :"OperationAccessDenied.Reason"=>{:fields=>[], :ns=>0}, :Operator=>{:fields=>[], :ns=>0}, :"OperatorError.Reason"=>{:fields=>[], :ns=>0}, :"Predicate.Operator"=>{:fields=>[], :ns=>0}, :"QuotaCheckError.Reason"=>{:fields=>[], :ns=>0}, :"RangeError.Reason"=>{:fields=>[], :ns=>0}, :"RateExceededError.Reason"=>{:fields=>[], :ns=>0}, :"ReadOnlyError.Reason"=>{:fields=>[], :ns=>0}, :"RejectedError.Reason"=>{:fields=>[], :ns=>0}, :"RequestError.Reason"=>{:fields=>[], :ns=>0}, :"RequiredError.Reason"=>{:fields=>[], :ns=>0}, :"SelectorError.Reason"=>{:fields=>[], :ns=>0}, :"SizeLimitError.Reason"=>{:fields=>[], :ns=>0}, :SortOrder=>{:fields=>[], :ns=>0}, :"StringFormatError.Reason"=>{:fields=>[], :ns=>0}, :"StringLengthError.Reason"=>{:fields=>[], :ns=>0}, :ManagedCustomerLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerLabelOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomerLabel", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ManagedCustomerLabelReturnValue=>{:fields=>[{:name=>:value, :type=>"ManagedCustomerLabel", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ManagedCustomerServiceError=>{:fields=>[{:name=>:reason, :type=>"ManagedCustomerServiceError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApiError"}, :PendingInvitationSelector=>{:fields=>[{:name=>:manager_customer_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:client_customer_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AccountLabel=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerLink=>{:fields=>[{:name=>:manager_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:link_status, :type=>"LinkStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:pending_descriptive_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_hidden, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :LinkOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :MoveOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>1}, {:name=>:old_manager_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :MutateLinkResults=>{:fields=>[{:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MutateManagerResults=>{:fields=>[{:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ManagedCustomer=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:company_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:can_manage_clients, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:date_time_zone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:test_account, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_labels, :type=>"AccountLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:exclude_hidden_accounts, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ManagedCustomerOperation=>{:fields=>[{:name=>:operand, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ManagedCustomerPage=>{:fields=>[{:name=>:entries, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:links, :type=>"ManagedCustomerLink", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :ManagedCustomerReturnValue=>{:fields=>[{:name=>:value, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PendingInvitation=>{:fields=>[{:name=>:manager, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}, {:name=>:client, :type=>"ManagedCustomer", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:expiration_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :LinkStatus=>{:fields=>[]}, :"ManagedCustomerServiceError.Reason"=>{:fields=>[]}}
    MANAGEDCUSTOMERSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201605"]

    def self.get_method_signature(method_name)
      return MANAGEDCUSTOMERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return MANAGEDCUSTOMERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return MANAGEDCUSTOMERSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, ManagedCustomerServiceRegistry)
    end
  end
end; end; end
