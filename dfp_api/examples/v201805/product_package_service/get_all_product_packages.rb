#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example gets all product packages.

require 'dfp_api'

def get_all_product_packages(dfp)
  # Get the ProductPackageService.
  product_package_service = dfp.service(:ProductPackageService, API_VERSION)

  # Create a statement to select product packages.
  statement = dfp.new_statement_builder()

  # Retrieve a small amount of product packages at a time, paging
  # through until all product packages have been retrieved.
  page = {:total_result_set_size => 0}
  begin
    page = product_package_service.get_product_packages_by_statement(
        statement.to_statement()
    )

    # Print out some information for each product package.
    unless page[:results].nil?
      page[:results].each_with_index do |product_package, index|
        puts '%d) Product package with ID %d and name "%s" was found.' %
            [index + statement.offset,product_package[:id],
            product_package[:name]]
      end
    end

    # Increase the statement offset by the page size to get the next page.
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of product packages: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201805

  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  begin
    get_all_product_packages(dfp)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
