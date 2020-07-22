# Tests for pre-commit-hooks 

This directory is meant to be used to test that the pre-commit hooks scripts work. 

This directory contains other directories. One directory for each pre-commit hook. 

Each directory is meant to be a collection of files that you might see in a project that is using the script. If you wrote a script that works with Swift, this directory would be a Swift project, for example. 

You will use this command inside of each directory: `pre-commit try-repo ../../ <hook-id> --all-files --verbose` where `<hook-id>` is the ID of the hook you want to run from the `.pre-commit-hooks.yaml` file. 

*Note: `pre-commit try-repo` will clone the git repo when you run the command. That means if there is a script that you want to test, the changes you make must be in a git commit or `try-repo` will ignore that change.* 

See the readme in each directory to learn how to setup the project to be able to test with it. 