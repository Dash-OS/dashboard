ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

ADD package.json /

SHELL ["/bin/bash", "--login", "-c"]

RUN curl -fsSL https://fnm.vercel.app/install | bash

# Copy data for add-on
COPY run.sh /
COPY index.js /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]