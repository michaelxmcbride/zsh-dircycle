ARG revolver_version=0.2.3
ARG zsh_version=latest
ARG zunit_version=0.8.2

FROM zshusers/zsh:${zsh_version}

RUN apt-get update && \
    apt-get install --yes curl

RUN curl --location "https://raw.githubusercontent.com/molovo/revolver/v${revolver_version}/revolver" > "/usr/local/bin/revolver" && \
    curl --location "https://github.com/zunit-zsh/zunit/releases/download/v${zunit_version}/zunit" > "/usr/local/bin/zunit" && \
    chmod +x /usr/local/bin/*

WORKDIR /usr/local/src/zsh-dircycle
