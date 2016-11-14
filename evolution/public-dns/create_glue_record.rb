#!/usr/bin/env ruby

# create glue record for domain

require 'aws-sdk'

domain_name = ARGV[0]
name_server = ARGV[1]
parent_domain_hosted_zone_id = ARGV[2]

route53 = Aws::Route53::Client.new(region: 'ap-south-1')

response = route53.change_resource_record_sets (
                                                   {
                                                       hosted_zone_id: parent_domain_hosted_zone_id,
                                                       change_batch: {
                                                           changes: [{
                                                                         action: 'UPSERT',
                                                                         resource_record_set: {
                                                                             name: domain_name,
                                                                             type: 'NS',
                                                                             ttl: 60,
                                                                             resource_records: [{
                                                                                                    value: name_server
                                                                                                }]
                                                                         }
                                                                     }]
                                                       }
                                                   }
                                               )

puts response.change_info.status


