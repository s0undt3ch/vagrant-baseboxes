Veewee::Session.declare({
  # Minimum RAM requirement for installation is 768MB.
  :cpu_count => '1',
  :memory_size=> '768',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :hwvirtext => 'on',
  :os_type_id => 'Fedora',
  :iso_file => "Fedora-16-i386-DVD.iso",
  :iso_src => "http://download.fedoraproject.org/pub/fedora/linux/releases/16/Fedora/i386/iso/Fedora-16-i386-DVD.iso",
  :iso_md5 => "0d64ab6b1b800827a9c83d95395b3da0",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> linux text biosdevname=0 ks=http://%IP%:%PORT%/ks.cfg<Enter><Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "add-box-build-stamp.sh",
    "install-ntp.sh",
    "switch-virtualbox-guest-additions-version.sh",
    "install-virtualbox-guest-additions.sh",
    "speed-up-ssh-logins.sh",
    "replace-motd.sh",
    "remove-temporary-files.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
