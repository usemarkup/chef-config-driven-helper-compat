name              "config-driven-helper"
maintainer        "Inviqa"
maintainer_email  "athompson@inviqa.com"
issues_url        "https://github.com/inviqa/chef-config-driven-helper/issues"
source_url        "https://github.com/inviqa/chef-config-driven-helper"
license           "Apache 2.0"
description       "enable driving cookbooks that are not normally config driven to be so"
version           "5.0.0"

depends 'iptables-ng', '4.0.0'
depends 'nginx'

%w{ debian ubuntu centos redhat fedora scientific amazon windows }.each do |os|
  supports os
end

recipe "nginx-sites", "Propagates sites from node config to nginx site"
recipe "services", "Enables service actions"
