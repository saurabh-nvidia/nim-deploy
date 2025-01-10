FROM nvcr.io/nim/microsoft/phi-3-mini-4k-instruct:latest
  EXPOSE 8000
  USER root
  ADD container_files/set_and_deploy_model.sh /tmp/set_and_deploy_model.sh
  RUN chmod +x /tmp/set_and_deploy_model.sh
  CMD /tmp/set_and_deploy_model.sh
