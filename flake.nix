{
  description = "Description for the project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } {
    imports = [
      # To import a flake module
      # 1. Add foo to inputs
      # 2. Add foo as a parameter to the outputs function
      # 3. Add here: foo.flakeModule
    ];
    systems = [ "x86_64-linux" "aarch64-linux" ];
    perSystem = { config, self', inputs', pkgs, system, ... }: {
      # Per-system attributes can be defined here. The self' and inputs'
      # module parameters provide easy access to attributes of the same
      # system.

      # Equivalent to  inputs'.nixpkgs.legacyPackages.hello;
      #packages.default = pkgs.hello;
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
        ];

        # runtime
        nativeBuildInputs = with pkgs; [
        ];

        LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
      };
    };
    flake = {
      # The usual flake attributes can be defined here, including system-
      # agnostic ones like nixosModule and system-enumerating ones, although
      # those are more easily expressed in perSystem.

    };
  };
}
