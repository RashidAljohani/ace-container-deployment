FROM ibmcom/ace
LABEL maintainer="Rashid A. Aljohani"
ENV BAR=myAPI.bar
COPY $BAR /tmp
RUN bash -c 'mqsicreateworkdir /home/aceuser/ace-server && mqsibar -w /home/aceuser/ace-server -a /tmp/$BAR -c'