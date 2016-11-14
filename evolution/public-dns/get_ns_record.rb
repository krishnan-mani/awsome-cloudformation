#!/usr/bin/env ruby

# interrogate the NS record for the hosted zone Id

require 'aws-sdk'

domain_name = ARGV[0]
hosted_zone_id = ARGV[1]

route53 = Aws::Route53::Client.new(region: 'ap-south-1')

response = route53.list_resource_record_sets (
                                                 {
                                                     hosted_zone_id: hosted_zone_id,
                                                     start_record_name: domain_name,
                                                     start_record_type: "NS",
                                                     max_items: 1

                                                 }
                                             )

puts response.resource_record_sets[0].resource_records[0].value

