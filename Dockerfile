FROM rocker/tidyverse

# Install Packages
RUN R -e "install.packages('mosaic')"

# Copy Files
COPY --chown=rstudio:rstudio . /home/rstudio

# Add healthcheck for containers-on-demand
HEALTHCHECK --retries=3 --timeout=30s CMD wget http://localhost:8787 || exit 1
