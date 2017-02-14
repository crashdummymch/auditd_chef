# auditd Cookbook

This cookbook manages auditd


### Performs:

- package installation
- service auditd configuration settings
- service auditd management
- rules management with augenrules (component audit rules)

### Augenrules Provided
- [Controlled Access Protection Profile (CAPP)](http://www.commoncriteriaportal.org/files/ppfiles/capp.pdf)
- [Labeled Security Protection Profile (LSPP)](http://www.commoncriteriaportal.org/files/ppfiles/lspp.pdf)
- [National Industrial Security Program Operating Manual (NISPOM)](http://www.fas.org/sgp/library/nispom.htm)
- [Security Technical Implementation Guides](http://iase.disa.mil/stigs/stig/index.html)

## Requirements

### Platforms

- Debian/Ubuntu
- RHEL/CentOS/Scientific/Amazon/Oracle 6+/Fedora

### Chef

- Chef 12.0 or later

### Cookbooks

- none

## Attributes

default['auditd']['package']['action']               = :upgrade
default['auditd']['service']['action']               = [:enable, :start]
default['auditd']['conf']['local_events']            = 'yes'  
default['auditd']['conf']['write_logs']              = 'yes'  
default['auditd']['conf']['log_file']                = '/var/log/audit/audit.log'  
default['auditd']['conf']['log_group']               = 'root'  
default['auditd']['conf']['log_format']              = 'RAW'  
default['auditd']['conf']['flush']                   = 'INCREMENTAL_ASYNC'  
default['auditd']['conf']['freq']                    = '50'  
default['auditd']['conf']['max_log_file']            = '8'  
default['auditd']['conf']['num_logs']                = '5'  
default['auditd']['conf']['priority_boost']          = '4'  
default['auditd']['conf']['disp_qos']                = 'lossy'  
default['auditd']['conf']['dispatcher']              = '/sbin/audispd'  
default['auditd']['conf']['name_format']             = 'NONE'  
default['auditd']['conf']['name']                    = 'mydomain'  
default['auditd']['conf']['max_log_file_action']     = 'ROTATE'  
default['auditd']['conf']['space_left']              = '75'  
default['auditd']['conf']['space_left_action']       = 'SYSLOG'  
default['auditd']['conf']['action_mail_acct']        = 'root'  
default['auditd']['conf']['admin_space_left']        = '50'  
default['auditd']['conf']['admin_space_left_action'] = 'SUSPEND'  
default['auditd']['conf']['disk_full_action']        = 'SUSPEND'  
default['auditd']['conf']['disk_error_action']       = 'SUSPEND'  
default['auditd']['conf']['use_libwrap']             = 'yes'  
default['auditd']['conf']['tcp_listen_port']         = ''  
default['auditd']['conf']['tcp_listen_queue']        = '5'  
default['auditd']['conf']['tcp_max_per_addr']        = '1'  
default['auditd']['conf']['tcp_client_ports']        = '1024-65535'  
default['auditd']['conf']['tcp_client_max_idle']     = '0'  
default['auditd']['conf']['enable_krb5']             = 'no'  
default['auditd']['conf']['krb5_principal']          = 'auditd'  
default['auditd']['conf']['krb5_key_file']           = '/etc/audit/audit.key'  
default['auditd']['conf']['distribute_network']      = 'no'  
default['auditd']['rules']['augenrules']             = {}


## Usage

### auditd::default

Manages:

- auditd package
- auditd service configuration
- auditd service management

e.g.
Just include `auditd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[auditd]"
  ]
}
```

### auditd::rules

Manages:

- audit augen component rules
node['audit']['rules']['augenrules'] = hash { augenrul_name => chefaction<:create|:delete> }
e.g.
Just include `auditd::ruleset` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[auditd::ruleset]"
  ]
}
```
## License and Authors
**Author:** Michael C Hoffman ([michaelchoffman@gmail.com](mailto:michaelchoffman@gmail.com))

**Copyright:** 2017, Michael C. Hoffman
```
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
