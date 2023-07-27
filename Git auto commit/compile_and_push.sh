#!/bin/bash

# Replace the following variables with appropriate values
SOURCE_FILE="main.c"   # Replace with your main source file (e.g., main.c, main.cpp, etc.)
OUTPUT_BINARY="my_program"   # Replace with the desired name for your compiled binary
COMMIT_MESSAGE="Update code on compile"   # Replace with an appropriate commit message
BRANCH="main"   # Replace with your branch name

# Compile the code using GCC
gcc -o $OUTPUT_BINARY $SOURCE_FILE

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful."

    # Add all changes to the staging area
    git add .

    # Commit the changes with the specified commit message
    git commit -m "$COMMIT_MESSAGE"

    # Push the changes to the specified branch on the remote repository
    git push origin $BRANCH

    echo "Code successfully committed and pushed to GitHub."
else
    echo "Compilation failed. Code not committed or pushed."
fi
