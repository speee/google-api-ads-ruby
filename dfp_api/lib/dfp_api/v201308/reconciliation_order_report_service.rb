# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:43:53.

require 'ads_common/savon_service'
require 'dfp_api/v201308/reconciliation_order_report_service_registry'

module DfpApi; module V201308; module ReconciliationOrderReportService
  class ReconciliationOrderReportService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201308'
      super(config, endpoint, namespace, :v201308)
    end

    def get_reconciliation_order_report(*args, &block)
      return execute_action('get_reconciliation_order_report', args, &block)
    end

    def get_reconciliation_order_reports_by_statement(*args, &block)
      return execute_action('get_reconciliation_order_reports_by_statement', args, &block)
    end

    def perform_reconciliation_order_report_action(*args, &block)
      return execute_action('perform_reconciliation_order_report_action', args, &block)
    end

    private

    def get_service_registry()
      return ReconciliationOrderReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201308::ReconciliationOrderReportService
    end
  end
end; end; end
