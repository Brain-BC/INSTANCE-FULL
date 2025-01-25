
FROM odoo:17

USER root

COPY requirements.txt /requirements.txt

RUN pip3 install --upgrade pip \
    && pip3 install -r /requirements.txt
    
USER odoo
