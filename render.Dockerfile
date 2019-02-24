ARG BASE_IMAGE=kitware/paraviewweb:pvw-visualizer-osmesa-5.5.0
FROM ${BASE_IMAGE}

COPY config/launcher/launcher-template.json /opt/wslink-launcher/launcher-template.json

COPY config/launcher/launcher.py /opt/paraview/install/lib/python2.7/site-packages/wslink/launcher.py

RUN ["/opt/paraviewweb/scripts/addEndpoints.sh", \
  "visualizer", "/opt/paraview/install/share/paraview-5.5/web/visualizer/www" \
]

# Start the container
ENTRYPOINT ["/opt/paraviewweb/scripts/start.sh"]
