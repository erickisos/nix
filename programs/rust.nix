{ pkgs, ... }:
{
  home.packages = with pkgs;
    [
      cargo
      rustc
      rust-analyzer
      nodejs-18_x
      nodePackages.pnpm
      curl
      wget
      pkg-config
      libiconv
      darwin.apple_sdk.frameworks.Security
      darwin.apple_sdk.frameworks.CoreServices
      darwin.apple_sdk.frameworks.CoreFoundation
      darwin.apple_sdk.frameworks.Foundation
      darwin.apple_sdk.frameworks.AppKit
      darwin.apple_sdk.frameworks.WebKit
      darwin.apple_sdk.frameworks.Cocoa
      libiconv
    ];
}
