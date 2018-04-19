require 'facter'

Facter.add(:f0023) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0023.sh")
  end
end
