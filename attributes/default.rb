default['auditd']['package']['action'] = :upgrade
default['auditd']['service']['action'] = [:enable, :start]
default['auditd']['conf']['auditd.conf'] = '/etc/audit/auditd.conf'
default['auditd']['conf']['local_events'] = 'yes'
default['auditd']['conf']['write_logs'] = 'yes'
default['auditd']['conf']['log_file'] = '/var/log/audit/audit.log'
default['auditd']['conf']['log_group'] = 'root'
default['auditd']['conf']['log_format'] = 'RAW'
default['auditd']['conf']['flush'] = 'INCREMENTAL'
default['auditd']['conf']['freq'] = '50'
default['auditd']['conf']['max_log_file'] = '8'
default['auditd']['conf']['num_logs'] = '5'
default['auditd']['conf']['priority_boost'] = '4'
default['auditd']['conf']['disp_qos'] = 'lossy'
default['auditd']['conf']['dispatcher'] = '/sbin/audispd'
default['auditd']['conf']['name_format'] = 'NONE'
default['auditd']['conf']['name'] = ''
default['auditd']['conf']['max_log_file_action'] = 'ROTATE'
default['auditd']['conf']['space_left'] = '75'
default['auditd']['conf']['space_left_action'] = 'SYSLOG'
default['auditd']['conf']['action_mail_acct'] = 'root'
default['auditd']['conf']['admin_space_left'] = '50'
default['auditd']['conf']['admin_space_left_action'] = 'SUSPEND'
default['auditd']['conf']['disk_full_action'] = 'SUSPEND'
default['auditd']['conf']['disk_error_action'] = 'SUSPEND'
default['auditd']['conf']['use_libwrap'] = 'yes'
default['auditd']['conf']['tcp_listen_port'] = ''
default['auditd']['conf']['tcp_listen_queue'] = '5'
default['auditd']['conf']['tcp_max_per_addr'] = '1'
default['auditd']['conf']['tcp_client_ports'] = ''
default['auditd']['conf']['tcp_client_max_idle'] = '0'
default['auditd']['conf']['enable_krb5'] = 'no'
default['auditd']['conf']['krb5_principal'] = 'auditd'
default['auditd']['conf']['krb5_key_file'] = ''
default['auditd']['conf']['distribute_network'] = 'no'
default['auditd']['rules']['augenrules'] = { 'cis.rules' => :create }
default['auditd']['rules']['buffers'] = 320
