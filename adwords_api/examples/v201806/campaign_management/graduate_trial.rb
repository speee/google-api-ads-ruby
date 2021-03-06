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
# This example illustrates how to graduate a trial.
#
# See the Campaign Drafts and Experiments guide for more information:
# https://developers.google.com/adwords/api/docs/guides/campaign-drafts-experiments

require 'adwords_api'
require 'date'

def graduate_trial(trial_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  trial_srv = adwords.service(:TrialService, API_VERSION)
  budget_srv = adwords.service(:BudgetService, API_VERSION)

  # To graduate a trial, you must specify a different budget from the base
  # campaign. The base campaign (in order to have had a trial based on it)
  # must have a non-shared budget, so it cannot be shared with the new
  # independent campaign created by graduation.
  budget = {
    :name => 'Budget #%d' % (Time.new.to_f * 1000).to_i,
    :amount => {:micro_amount => 50000000},
    :delivery_method => 'STANDARD'
  }
  budget_operation = {:operator => 'ADD', :operand => budget}

  # Add budget.
  return_budget = budget_srv.mutate([budget_operation])
  budget_id = return_budget[:value].first[:budget_id]

  trial = {
    :id => trial_id,
    :budget_id => budget_id,
    :status => 'GRADUATED'
  }

  trial_operation = {:operator => 'SET', :operand => trial}

  # Update the trial.
  return_trial = trial_srv.mutate([trial_operation])
  trial = return_trial[:value].first

  # Graduation is a synchronous operation, so the campaign is already ready.
  # If you promote instead, make sure to see the polling scheme demonstrated
  # in add_trial.rb to wait for the asynchronous operation to finish.
  puts ("Trial ID %d graduated. Campaign %d was given a new budget ID %d and" +
      "is no longer dependent on this trial.") %
      [trial[:id], trial[:trial_campaign_id], budget_id]
end

if __FILE__ == $0
  API_VERSION = :v201806

  begin
    trial_id = 'INSERT_TRIAL_ID_HERE'.to_i

    graduate_trial(trial_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
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

