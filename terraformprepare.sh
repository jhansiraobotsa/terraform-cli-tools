#!/bin/bash

FOLDER=$1

if [ ! -d "$FOLDER" ]; then
  echo "❌ Folder not found: $FOLDER"
  exit 1
fi

for file in "$FOLDER"/*.tf; do
  mv "$file" "$file.orig"
  echo "✅ Renamed: $(basename "$file") → $(basename "$file").orig"
done

cat > "$FOLDER/default.auto.tfvars" <<VARS
environment    = "dev"
region         = "us-west-2"
instance_type  = "t2.micro"
VARS

echo "✅ Created: default.auto.tfvars"
