FROM rocker/tidyverse

# Install Packages
RUN R -e "install.packages('mosaic')"

# Copy Files
COPY --chown=rstudio:rstudio . /home/rstudio

HEALTHCHECK --interval=5s --timeout=5s --retries=10 CMD wget localhost:8787 -q -O - > /dev/null 2>&1