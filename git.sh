#!/bin/bash

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        --commit)
            commit_message="$2"
            shift # past argument
            shift # past value
            ;;
        --branch)
            branch_name="$2"
            shift # past argument
            shift # past value
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

# Check if required options are provided
if [ -z "$commit_message" ] || [ -z "$branch_name" ]; then
    echo "Usage: ./my_script.sh --commit 'Your commit message' --branch 'BranchName'"
    exit 1
fi

# Execute pint command
php vendor/bin/pint

# Add changes to the staging area (git add)
git add .

# Commit changes with the provided commit message
git commit -m "$commit_message"

# Push to the specified branch
git push origin -u "$branch_name"





