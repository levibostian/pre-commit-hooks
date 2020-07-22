![GitHub release (latest by date)](https://img.shields.io/github/v/release/levibostian/pre-commit-hooks)

# pre-commit-hooks

Custom hooks for [pre-commit](https://pre-commit.com/).

| Hook id       | Description                                                                             |
| ------------- | --------------------------------------------------------------------------------------- |
| `swiftformat` | Format your Swift code with [SwiftFormat](https://github.com/nicklockwood/SwiftFormat). |

*Note: The scripts in these hooks are written in Bash. It is also assumed that you are running `pre-commit` on macOS. In the future, these commands could be [re-written in Go lang](https://github.com/lietu/go-pre-commit) or something like it but at this time, Bash works quick and easy for us.*

# Getting started

* [Install `pre-commit`](https://pre-commit.com/#install) on your machine.

* Install git hooks to run `pre-commit`. You can do this with `pre-commit install` or if you are using another program to run your git hooks, add `pre-commit run` to your git `pre-commit` hook.

* Add to your `.pre-commit-config.yaml` file what hooks you would like to install.

```yaml
- repo: git@github.com:levibostian/pre-commit-hooks
  rev: <latest-version-or-branch>
  hooks:
  - id: swiftformat
    args: [--config path/.swiftformat] # args are optional. Run `swiftformat --help` to learn all of the arguments you can pass in.
```

Replace `<latest-version-or-branch>` with a [github release]() version, a git commit, or a branch name. The latest git tag release is ![GitHub release (latest by date)](https://img.shields.io/github/v/release/levibostian/pre-commit-hooks) (the latest beta is ![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/levibostian/pre-commit-hooks?include_prereleases) if you want to try the latest and greatest).

> If you are wondering what `args` is, it allows you to [pass in arguments to commands](https://pre-commit.com/#passing-arguments-to-hooks).

# Development

* [Install `pre-commit`](https://pre-commit.com/#install)
* Check out the `./tests` directory to learn how these scripts are tested.
