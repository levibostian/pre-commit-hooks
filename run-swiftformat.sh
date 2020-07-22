#!/bin/sh

if ! [ -x "$(command -v swiftformat)" ]; then
    echo "You need to install the program 'swiftformat' on your machine to continue. See: https://github.com/nicklockwood/SwiftFormat#how-do-i-install-it"
    exit 1
fi

# Thanks for the inspriation, https://github.com/Bahjat/pre-commit-golang/blob/master/run-go-lint.sh

PASS=true
for FILE in "$@"
do
    echo "[SWIFT_FORMAT] linting file $FILE"
    swiftformat "$FILE"
    if [ "$?" -eq 1 ]; then
        PASS=false
    fi
done

if [ "$PASS" = "false" ]; then
    exit 1
fi
