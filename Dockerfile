ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip
RUN pip install pyserial==3.5 pymodbus==3.8.6 --break-system-packages

COPY serial_forwarder.py run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
