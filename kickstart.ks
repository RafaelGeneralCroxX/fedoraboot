lang pt_BR
keyboard --xlayouts='br'
timezone America/Fortaleza --utc
rootpw $2b$10$s5c82aXR9KwEvbJIB.AURuNWskmRDKpfkGi1gqDR87oRKJv81zFrm --iscrypted
cdrom
bootloader --append="rhgb quiet crashkernel=1G-4G:192M,4G-64G:256M,64G-:512M" --iscrypted --password=grub.pbkdf2.sha512.10000.0CEB31A70133534A7D9F1FCAC2E7B7616D75A170154CEEB0A8178D06936FCEA16E9D8E209DB0D0F60EAAB991E93801A988512F9A44A23C409347946A6EB8951D.B775AD9E94F99490304321F96DE4C6F68004A14765BD75042AA489E4419FE1EC5B4BF1347858ED178C7B88543F1847850592A9BFADEB698AD361541E3FEE55A8
zerombr
clearpart --all --initlabel
autopart
network --bootproto=dhcp
firstboot --enable
selinux --enforcing
%packages
@^workstation-product-environment
@development
@network-tools
@standard
@gnome-desktop
@input-methods
@remote-desktop-clients
@gnome-apps
@emacs
%end
dnf install gnome-shell-extension-desktop-icons