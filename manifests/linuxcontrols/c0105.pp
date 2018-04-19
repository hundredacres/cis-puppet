# Class cis::linuxcontrols::c0105
#
# Ensure prelink is disabled.
#

class cis::linuxcontrols::c0105 {
  file {'/usr/local/sbin/f0023.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0023.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
  }

  if $::f0023 == 'fail' {
    warning("Node $::fqdn failed CIS v2.1.0 RHEL6 Control 1.5.4 (f0023)")
  }
}
