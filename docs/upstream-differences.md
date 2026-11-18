# Upstream differences

This fork is based on [mizchi/syntree.mbt at `0492c077be93ff5aa3b51a53e0f0ebc17f025844`](https://github.com/mizchi/syntree.mbt/commit/0492c077be93ff5aa3b51a53e0f0ebc17f025844).

- **MoonBit compatibility:** MoonBit `0.1.20261117` no longer promotes trait implementations to methods automatically. Formatters in `src/` call `Show::output` explicitly so downstream consumers can compile the package. The patch also updates derive and string builder syntax to keep compiler checks strict. The formatter output and tokenizer logic are unchanged.
- **CI and publication:** The fork uses the [MoonBit repository template](https://github.com/totto2727-org/template-moonbit-simple) for its workflows. CI uses the locked Nix toolchain to check formatting, check types, build the JS artifact, and run tests. The tests import package APIs explicitly. Pushes to `main` publish the fork package to Mooncakes when `MOONCAKES_TOKEN` is set. FlakeHub publication is disabled.

- **Mooncakes identity:** The fork uses `totto2727/syntree` and points to its own GitHub repository in `moon.mod`. Downstream consumers must use the fork namespace in their dependency and package imports. The version and external dependencies are unchanged.
