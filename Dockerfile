# ml-metadata package depends on tensorflow package
#FROM python:3.7
FROM klstg-docker.slb-wartifactory-v.stg.rmn.local/rakuten/rflow/rflow-python:3.7.10
COPY backend/metadata_writer/requirements.txt /kfp/metadata_writer/
RUN python3 -m pip install -r /kfp/metadata_writer/requirements.txt

COPY backend/metadata_writer/src/* /kfp/metadata_writer/
CMD python3 -u /kfp/metadata_writer/metadata_writer.py
