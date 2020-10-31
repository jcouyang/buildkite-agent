FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixos-20.09 nixpkgs
RUN nix-channel --update

RUN nix-env -i buildkite-agent bash
RUN ln -s $(which bash) /bin/bash
CMD buildkite-agent start --build-path $HOME