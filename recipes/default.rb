#
# Cookbook Name:: auditd
# Recipe:: default
#

#extend recipe to include helper functions
extend Auditd

# debugging 
log "package_name='#{auditd_package_name(node['platform_family'])}'" do
  level :debug
end
log "service_name='#{auditd_service_name(node['platform_family'])}'" do
  level :debug
end


#ensure auditd package is installed
package 'auditd' do
  extend Auditd
  package_name "#{auditd_package_name(node['platform_family'])}"
  action node['auditd']['package']['action']
end

#configure the main auditd service configuration file
template "/etc/audit/auditd.conf" do
  source "auditd.conf.erb"
  mode '0640'
  notifies :restart, "service[auditd]"
end

#ensure service is configured
service 'auditd' do
  extend Auditd
  service_name auditd_service_name(node['platform_family'])
  supports [:start, :stop, :restart, :reload, :status]
  if File.exists?("/usr/bin/systemctl")
    restart_command 'service auditd restart'
    reload_command 'service auditd reload'
  end
  action node['auditd']['service']['action']
end
