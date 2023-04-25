FROM continuumio/miniconda3

COPY environment.yml /tmp/conda-tmp/
RUN /opt/conda/bin/conda env update -n base -f /tmp/conda-tmp/environment.yml \
    && rm -rf /tmp/conda-tmp && conda clean -ya

COPY entrypoint.sh /opt/conda/bin/entrypoint.sh

RUN chmod 755 /opt/conda/bin/entrypoint.sh

ENTRYPOINT [ "/opt/conda/bin/entrypoint.sh" ] 

WORKDIR /home/tmp