FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixos-20.09 nixpkgs
RUN nix-channel --update

RUN nix-env -i buildkite-agent

CMD buildkite-agent start