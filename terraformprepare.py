import os
import argparse

TEMPLATE = """# Default Terraform Variables
environment    = "dev"
region         = "us-west-2"
instance_type  = "t2.micro"
"""

def rename_tf_files(folder):
    renamed = 0
    for file in os.listdir(folder):
        if file.endswith(".tf"):
            src = os.path.join(folder, file)
            dst = src + ".orig"
            os.rename(src, dst)
            print(f"✅ Renamed: {file} → {file}.orig")
            renamed += 1
    if renamed == 0:
        print("⚠️ No `.tf` files found to rename.")

def create_tfvars(folder):
    tfvars_path = os.path.join(folder, "default.auto.tfvars")
    with open(tfvars_path, "w") as f:
        f.write(TEMPLATE)
    print(f"✅ Created template: default.auto.tfvars")

def main():
    parser = argparse.ArgumentParser(description="Rename .tf files and create default.tfvars")
    parser.add_argument("--folder", required=True, help="Terraform directory")

    args = parser.parse_args()
    folder = args.folder

    if not os.path.isdir(folder):
        print(f"❌ Folder not found: {folder}")
        return

    rename_tf_files(folder)
    create_tfvars(folder)

if __name__ == "__main__":
    main()
