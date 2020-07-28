{ branch ? "canary", pkgs }:
# Generated by ./update-discord.sh
let
  inherit (pkgs) callPackage fetchurl;
in {
  stable = callPackage ./base.nix rec {
    pname = "discord";
    binaryName = "Discord";
    desktopName = "Discord";
    version = "0.0.10";
    src = fetchurl {
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      sha256 = "0kx92i8naqr3algmyy3wyzbh8146z7gigxwf1nbpg1gl16wlplaq";
    };
  };
  ptb = callPackage ./base.nix rec {
    pname = "discord-ptb";
    binaryName = "DiscordPTB";
    desktopName = "Discord PTB";
    version = "0.0.19";
    src = fetchurl {
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      sha256 = "0wixmm16qsmgbr0l9144vl5pc3s2p4jqhl7cnc6kmgy1y4ig56ib";
    };
  };
  canary = callPackage ./base.nix rec {
    pname = "discord-canary";
    binaryName = "DiscordCanary";
    desktopName = "Discord Canary";
    version = "0.0.105";
    src = fetchurl {
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      sha256 = "1jc2zr8q33ras5mkifg19kcxpb84vsqx01rj66w62hsjw1nsbidg";
    };
  };
}.${branch}