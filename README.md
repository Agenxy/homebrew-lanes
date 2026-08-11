# Agenxy Homebrew tap

One tap for every Agenxy project. Casks are published automatically by
GoReleaser; nothing here is edited by hand.

```sh
brew install agenxy/tap/lanes
```

[Lanes](https://github.com/agenxy/lanes) installs `lanes` and `lanesd`, clearing
the macOS quarantine flag on the way: the binaries are cosign-signed for
provenance but not Apple-notarised, and without that step macOS refuses to run
them after a successful install, which looks like a broken product rather than an
unsigned one.

The tap was called `homebrew-lanes` until August 2026, so `brew install
agenxy/lanes/lanes` still works through GitHub's redirect. Nothing needs doing if
you tapped it under the old name.

Apache 2.0, like everything else here.
