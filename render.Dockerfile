FROM kitware/paraviewweb:pvw-base-osmesa-5.5.0

COPY config/launcher/launcher-template.json /opt/wslink-launcher/launcher-template.json

# RUN sed "s|replace-me-log-dir|./data:/log/asd|g" -i /opt/wslink-launcher/launcher-template.json

RUN ["/opt/paraviewweb/scripts/addEndpoints.sh", \
  "visualizer", "/opt/paraview/install/share/paraview-5.5/web/visualizer/www" \
]

# Start the container
ENTRYPOINT ["/opt/paraviewweb/scripts/start.sh"]
