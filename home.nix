{ config, pkgs, ... }:

{
  home.username = "noah";
  home.homeDirectory = "/home/noah";

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "wishopt";
    userEmail = "mail@example.com";
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    zip
    unzip
    mtr # A network diagnostic tool
    dnsutils  # `dig` + `nslookup`
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg
    glow # markdown previewer in terminal
    iotop # io monitoring
    iftop # network monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
  ];

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
