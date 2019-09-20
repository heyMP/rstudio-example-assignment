FROM rocker/tidyverse

# Install Packages
RUN R -e "install.packages('mosaic')"

# Copy Files
COPY --chown=rstudio:rstudio . /home/rstudio