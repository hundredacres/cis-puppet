require 'facter'

Facter.add(:f0024) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0024.sh")
  end
end
