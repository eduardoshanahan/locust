IMAGE_VERSION=$(cat version.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]')
git push bitbucket
git push github
if git tag $IMAGE_VERSION; then
    git push bitbucket --tags
    git push github --tags
fi