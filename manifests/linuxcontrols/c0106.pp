# Class cis::linuxcontrols::c0106
#
# Ensure prelink is disabled.
#

class cis::linuxcontrols::c0106 {
  file {'/usr/local/sbin/f0024.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0024.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
  }

  if $::f0024 == 'fail' {
    warning("Node $::fqdn failed CIS v2.1.0 RHEL6 Control 5.3.2 (f0024)")
  }
}
