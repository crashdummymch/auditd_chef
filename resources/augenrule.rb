# Cookbook:: auditd
# Resource:: auditd_augenrule
#
# use_inline_resources

resource_name :auditd_augenrule
default_action :create
attribute :name, kind_of: String, name_attribute: true
attribute :cookbook, kind_of: String, default: nil

action :create do
  template "/etc/audit/rules.d/r_#{new_resource.name}" do
    source "#{new_resource.name}.erb"
    mode '0600'
    cookbook new_resource.cookbook if new_resource.cookbook
    notifies :restart, 'service[auditd]'
  end
end

action :delete do
  file "/etc/audit/rules.d/r_#{new_resource.name}" do
    action :delete
  end
end
