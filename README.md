# Agenxy Homebrew tap

One tap for every Agenxy project. Release automation publishes casks and
formulae from their authoritative project releases.

```sh
brew install agenxy/tap/dibs
brew install agenxy/tap/remap
brew install agenxy/tap/supgang
```

[Dibs](https://github.com/agenxy/dibs) installs `dibs` and `dibd`, clearing the
macOS quarantine flag on the way: the binaries are cosign-signed for provenance
but not Apple-notarised, and without that step macOS refuses to run them after a
successful install, which looks like a broken product rather than an unsigned
one.

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
