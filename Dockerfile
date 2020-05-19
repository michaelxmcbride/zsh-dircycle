ARG zsh_version=latest

FROM zshusers/zsh:${zsh_version}

ARG curl_options

RUN apt-get update && \
    apt-get install --yes curl ncurses-bin

RUN curl ${curl_options} --location "https://raw.githubusercontent.com/molovo/revolver/v0.2.3/revolver" > "/usr/local/bin/revolver" && \
    curl ${curl_options} --location "https://github.com/zunit-zsh/zunit/releases/download/v0.8.2/zunit" > "/usr/local/bin/zunit" && \
    chmod +x /usr/local/bin/*

WORKDIR /usr/local/src/zsh-dircycle
