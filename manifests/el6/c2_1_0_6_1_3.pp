# Class cis::el6::c2_1_0_6_1_3
#
# Restrict access to the /etc/shadow file.
#
# CIS v2.1.0 Security Benchmark for RHEL6
#

class cis::el6::c2_1_0_6_1_3   {
  file {'/etc/shadow':
    owner => root,
    group => root,
    mode  => '0000',
  }
}
