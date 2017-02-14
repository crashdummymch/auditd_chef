#
# Cookbook Name:: auditd
# Recipe:: rules
#

include_recipe 'auditd::default'

# Ensure the default audit.rules augenrule is configured
template '/etc/audit/rules.d/audit.rules' do
  source 'audit.rules.erb'
  mode '0600'
  notifies :restart, 'service[auditd]'
end

node['auditd']['rules']['augenrules'].each do |rtemplate, rtemplate_action|
  auditd_augenrule rtemplate do
    action rtemplate_action
  end
end
