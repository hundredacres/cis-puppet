require 'facter'

Facter.add(:f0025) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0025.sh")
  end
end
