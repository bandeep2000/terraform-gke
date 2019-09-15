# encoding: utf-8
# copyright: 2018, The Authors

title 'sample section'


describe google_container_clusters(project: 'chef-inspec-gcp', zone: 'europe-west2-a') do
  its('cluster_names') { should include "my-cluster" }
end
