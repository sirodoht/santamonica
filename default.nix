with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    zola
  ];
}
