#!/usr/bin/env bash
# Generates a changelog between tagged releases

repository_url="{{cookiecutter.package_url}}"

function generate_changelog() {
    previous_tag=0
    for current_tag in $(git tag --sort=-creatordate)
    do
        if [ "$previous_tag" != 0 ];then
            commit_hash=$(git rev-parse --short ${previous_tag})
            tag_date=$(git log -1 --pretty=format:'%ad' --date=short ${previous_tag})
            printf "## [${previous_tag}](${repository_url}/get/${previous_tag}.zip)\n\n"
            printf "_Release Date: ${tag_date}, Commit Hash: ${commit_hash}_\n\n"
            git log ${current_tag}...${previous_tag} --pretty=format:"* %s ([View](${repository_url}/commits/%H))" | grep -E "pull request|\[major\]|\[bugfix\]|\[minor\]"
            printf "\n\n"
        fi
        previous_tag=${current_tag}
    done

    # Show initial release for first tag
    commit_hash=$(git rev-parse --short ${current_tag})
    tag_date=$(git log -1 --pretty=format:'%ad' --date=short ${current_tag})
    printf "## [${previous_tag}](${repository_url}/get/${previous_tag}.zip)\n\n"
    printf "_Release Date: ${tag_date}, Commit Hash: ${commit_hash}_\n\n"
    printf "* Initial release"
}

generate_changelog > CHANGELOG.md

git add CHANGELOG.md
git commit -m "Update changelog"
