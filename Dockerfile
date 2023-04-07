FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install pandas seaborn jupyter-offlinenotebook

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work

RUN mkdir data
COPY --chown=1000:100 data/data.csv data
#COPY --chown=1000:100 data/covid_19_data.csv data
COPY --chown=1000:100 ./Challenge.ipynb .
