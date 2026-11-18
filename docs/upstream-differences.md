# Upstream differences

This fork is based on [mizchi/syntree.mbt at `0492c077be93ff5aa3b51a53e0f0ebc17f025844`](https://github.com/mizchi/syntree.mbt/commit/0492c077be93ff5aa3b51a53e0f0ebc17f025844).

- **MoonBit compatibility:** MoonBit `0.1.20261117` no longer promotes trait implementations to methods automatically. Formatters in `src/` call `Show::output` explicitly so downstream consumers can compile the package. The patch also updates derive and string builder syntax to keep compiler checks strict. The formatter output and tokenizer logic are unchanged.
- **CI:** The workflow builds the JS artifact in addition to type-checking and testing. It suppresses only warning 25 for existing unqualified black-box test references, so the compatibility patch does not have to rewrite those tests.

- **Mooncakes identity:** The fork uses `totto2727/syntree` and points to its own GitHub repository in `moon.mod`. Downstream consumers must use the fork namespace in their dependency and package imports. The version and external dependencies are unchanged.
