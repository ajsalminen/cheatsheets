nixos-rebuild switch
nix-env -qaP '*' --description | grep dirvish
nix-env -qaP | grep basic
nix-collect-garbage -d
nix-env --delete-generations old
nix-env -i all
nix-channel --update
nix-env --rollback