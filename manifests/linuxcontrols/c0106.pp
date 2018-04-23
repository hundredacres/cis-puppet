# Class cis::linuxcontrols::c0106
#
# Ensure account lockout configured.
#

class cis::linuxcontrols::c0106 {
  file {'/usr/local/sbin/f0024.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0024.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
  }
  file {'/usr/local/sbin/f0025.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0025.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
  }

  if $::f0024 == 'fail' {
    warning("Node $::fqdn failed CIS v2.1.0 RHEL6 Control 5.3.2 (f0024)")
  }
  if $::f0025 == 'fail' {
    warning("Node $::fqdn failed CIS v2.1.0 RHEL6 Control 5.3.2 (f0025)")
  }
}
