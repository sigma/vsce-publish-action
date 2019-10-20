FROM node:10-slim

ARG npm_version="1.68.0"

LABEL version=$npm_version
LABEL repository="https://github/sigma/vsce-action"
LABEL homepage="https://github/sigma/vsce-action"
LABEL maintainer="Yann Hodique <yann.hodique@gmail.com>"

LABEL com.github.actions.name="GitHub Action for vsce"
LABEL com.github.actions.description="Wraps the vsce CLI to be used in GitHub Actions."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="green"

RUN npm install -g vsce@$npm_version

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
