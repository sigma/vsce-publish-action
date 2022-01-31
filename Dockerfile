FROM alpine:3.15

LABEL repository="https://github/sigma/vsce-action"
LABEL homepage="https://github/sigma/vsce-action"
LABEL maintainer="Yann Hodique <yann.hodique@gmail.com>"

LABEL com.github.actions.name="GitHub Action for vsce"
LABEL com.github.actions.description="Wraps the vsce CLI to be used in GitHub Actions."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="green"

RUN apk add --no-cache bash
RUN apk add --update nodejs npm 
RUN npm install -g vsce

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]