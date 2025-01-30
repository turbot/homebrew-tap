#!/bin/sh

set -e

# Fetch the new version from the workflow
NEW_VERSION=${VERSION#"v"}
echo $NEW_VERSION

# Save file names in variables
base_formula_name="tailpipe"
base_file="Formula/$base_formula_name.rb"
new_file="Formula/$base_formula_name@$NEW_VERSION.rb"

echo "Creating versioned formula for new version: $NEW_VERSION"

# Verify expected Environment variables are set
if [ -z "$NEW_VERSION" ] ; then
    echo "Must specify next tailpipe version via VERSION"
    exit 1
fi

# Remove the existing base file(tailpipe.rb)
rm -f "$base_file"

# Copy the new versioned file(tailpipe@x.y.z.rb) to the new base file
cp "$new_file" "$base_file"

# Remove dots from new version
brew_new_version="$(echo "$NEW_VERSION" | sed 's/\.//g')"

# Remove versions in class name from base file
sed  -i 's/'"class TailpipeAT$brew_new_version <"'/class Tailpipe </' "$base_file"
