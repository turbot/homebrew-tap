#!/bin/sh

set -e

NEW_VERSION=${VERSION#"v"}
echo $NEW_VERSION

base_formula_name="steampipe"
base_file="Formula/$base_formula_name.rb"

# Parse old version from current symlink
old_version="$(find ./Aliases -type l | sed 's+^./Aliases/steampipe@++' | xargs -n 1)"

echo "Replacing formula for version: $old_version"

# Verify expected Environemnt variables are set
if [ -z "$NEW_VERSION" ] ; then
    echo "Must specify next steampipe version via NEW_VERSION"
    exit 1
fi

# Update current live formula to old version
old_file="Formula/$base_formula_name@$old_version.rb"
new_file="Formula/$base_formula_name@$NEW_VERSION.rb"

# Verify formula for version doesn't exist
if [ -f "$old_file" ]; then
    echo "Formula already exists for version: $old_version"
    exit 1
fi

# Verify formula for 
if [ ! -f "$new_file" ]; then
    echo "No formula found for version: $NEW_VERSION"
    exit 1
fi

# Remove existing Symlink
rm "Aliases/$base_formula_name@$old_version"

# Rename base formula
mv "$base_file" "$old_file"

# Remove dots from old version
brew_old_version="$(echo "$old_version" | sed 's/\.//g')" 

echo "all good till here 1"

# Add versions to file
sed  -i '' 's/class Steampipe </'"class SteampipeAT$brew_old_version"' </' "$old_file"

echo "all good till here 2"
# Upated new version to current live

# Rename to base formula
mv "$new_file" "$base_file"

# Remove dots from new version
brew_new_version="$(echo "$NEW_VERSION" | sed 's/\.//g')"

# Remove versions from file
sed  -i '' 's/'"class SteampipeAT$brew_new_version <"'/class Steampipe </' "$base_file"

# Create symlink
cd Aliases && ln -s "../$base_file" "steampipe@$NEW_VERSION"