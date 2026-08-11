# Agenxy Homebrew tap

One tap for every Agenxy project. Release automation publishes casks and
formulae from their authoritative project releases.

```sh
brew install agenxy/tap/remap
```

[Remap](https://github.com/agenxy/remap) installs the cross-platform `remap`
CLI. Its foundation release validates name-to-address and name-to-service
mappings without changing DNS or system trust; privileged integration follows
in explicitly proof-gated releases.

[Lanes](https://github.com/agenxy/lanes) installs `lanes` and `lanesd`, clearing
the macOS quarantine flag on the way: the binaries are cosign-signed for
provenance but not Apple-notarised, and without that step macOS refuses to run
them after a successful install, which looks like a broken product rather than an
unsigned one.

The tap was called `homebrew-lanes` until August 2026, so `brew install
agenxy/lanes/lanes` still works through GitHub's redirect. Nothing needs doing if
you tapped it under the old name.

Apache 2.0, like everything else here.
