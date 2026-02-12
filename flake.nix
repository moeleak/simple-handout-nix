{
  description = "Typst Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    self.submodules = true;
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };

        fonts = with pkgs; [
          noto-fonts
          noto-fonts-cjk-sans
          noto-fonts-cjk-serif
          source-han-sans
          source-han-mono
          source-han-serif
          dejavu_fonts
          liberation_ttf
          libertinus
        ];
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.typst pkgs.ghostscript ];
          env.TYPST_FONT_PATHS = pkgs.lib.strings.concatStringsSep ":" fonts;
          shellHook = ''
            unset SOURCE_DATE_EPOCH
          '';
        };
      }
    );
}
