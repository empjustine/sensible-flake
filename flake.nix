{
  inputs.nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-23.05";
  outputs = {
    self,
    nixpkgs-stable,
  }: {
    packages.x86_64-linux.xterm = nixpkgs-stable.legacyPackages.x86_64-linux.xterm;
    packages.x86_64-linux.sensible = nixpkgs-stable.legacyPackages.x86_64-linux.buildEnv {
      name = "sensible";
      paths = [];
      postBuild = ''

      '';
    };
  };
}
