ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache python3 py3-pip
RUN pip install pyserial pymodbus --break-system-packages

COPY serial_forwarder.py run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
