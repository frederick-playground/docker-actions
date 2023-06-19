# docker-actions
test using github actions to build and push docker images

- how to checkout using a commit?
- how to get the latest tag that
  satisfy the semver format?

logic for schedule build (base image change)
- if image changed
    get the latest semver tag from mainline
    checkout code from that tag
    build and push using that tag

logic for tag push
- if tag is in semver format on mainline
    checkout code from that tag
    build and push using that tag

- may be more efficient way is to get
the latest tag from a branch?

