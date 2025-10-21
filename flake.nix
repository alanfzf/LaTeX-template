{
  description = "Simple multi OS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }@inputs:

    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        mkScript =
          name: text:
          let
            script = pkgs.writeShellScriptBin name text;
          in
          script;

        scripts = [ ];

        tex = pkgs.texlive.combine {
          inherit (pkgs.texlive)
            scheme-medium
            titlesec
            enumitem
            apacite
            ;
        };

        devPackages = with nixpkgs; [
          tex
          pkgs.zathura
        ];

        postShellHook = '''';
      in
      {
        devShells = {
          default = pkgs.mkShell {
            name = "latex-shell";
            nativeBuildInputs = scripts;
            packages = devPackages;
            postShellHook = postShellHook;
          };
        };
      }
    );
}
