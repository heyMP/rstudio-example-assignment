FROM rocker/tidyverse

RUN rm -rf kitmatic
RUN R -e "install.packages('mosaicCore')"