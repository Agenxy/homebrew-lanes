# Agenxy Homebrew tap

Formulae for Agenxy projects. Each is updated by hand from that project's
release; there is no automation here yet.

```sh
brew install agenxy/tap/remap
brew install agenxy/tap/supgang
```

**Dibs is not in this tap yet.** Install it from its
[releases](https://github.com/agenxy/dibs/releases), which carry signed binaries
for macOS and Linux on both architectures. The binaries are cosign-signed for
provenance but not Apple-notarised, so macOS quarantines them and refuses to run
them until the flag is cleared — which looks like a broken product rather than
an unsigned one, and is the main thing a formula here will handle when it lands.

[Remap](https://github.com/agenxy/remap) installs the cross-platform `remap`
CLI. Its foundation release validates name-to-address and name-to-service
mappings without changing DNS or system trust; privileged integration follows
in explicitly proof-gated releases.

[Supgang](https://github.com/agenxy/supgang) installs the macOS and Linux
`supgang` CLI. Its first alpha supports direct, authenticated peer contact;
automatic rendezvous, NAT traversal, and owned relay mode remain later work.

Dibs was called Lanes until August 2026, and this tap was `homebrew-lanes`
before that. Both still resolve. `agenxy/lanes/lanes` reaches the tap through
GitHub's redirect, and `tap_migrations.json` sends `lanes` to `dibs`, so an
existing install moves across on the next `brew update` rather than sitting on a
version that no longer gets releases.

Apache 2.0, like everything else here.
