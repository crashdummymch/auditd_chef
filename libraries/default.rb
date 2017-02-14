#
# Cookbook Name:: auditd
# Module:: Auditd
#
module Auditd
  # definition to auto-pic package name
  def auditd_package_name(platform_family)
    case platform_family
    when 'rhel', 'fedora'
      'audit'
    else
      'auditd'
    end
  end

  # definition to auto-pic service name
  def auditd_service_name(platform_family)
    case platform_family
    when /^.*/
      'auditd'
    end
  end
end
