FROM python
RUN useradd agent && mkdir -p /home/agent && chown agent:agent /home/agent
RUN pip3 install wg-meshconf
WORKDIR /home/agent
ENTRYPOINT ["/usr/local/bin/wg-meshconf"]