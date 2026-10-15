# EyalSec Homebrew tap

Homebrew formulae for EyalSec's open-source tools, for macOS and Linux.

```bash
brew install eyalsec/tap/eyalsec-cli
```

| Formula | What it is |
|---|---|
| [`eyalsec-cli`](Formula/eyalsec-cli.rb) | Read your EyalSec events and machines from a terminal or a CI step: list, search and export events as CSV or JSON, show one event's full detail, list machines and runs. Source and docs: [EyalSec/eyalsec-cli](https://github.com/EyalSec/eyalsec-cli). |

Each formula installs the signed release binaries published on the tool's GitHub release page; its checksums come from that release's `checksums.txt`. The release workflow of each tool updates its formula here, and this repository's CI installs and tests every formula on macOS and Linux before you do.

EyalSec follows untrusted data through your running program and reports when it reaches a risky operation, such as a SQL query, a shell command or a file path. To see it on your own code, [book a live demo](https://eyalsec.com/contact). Pricing is at [eyalsec.com/pricing](https://eyalsec.com/pricing).

Questions: support@eyalsec.com. Security reports: security@eyalsec.com.

## License

MIT. See [LICENSE](LICENSE).
