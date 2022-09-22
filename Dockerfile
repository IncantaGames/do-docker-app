FROM adamrehn/ue4-runtime:latest

RUN mkdir /home/ue4/LinuxServer
COPY --chown=ue4:ue4 ./LinuxServer/* /home/ue4/LinuxServer/

RUN chmod +x /home/ue4/LinuxServer/SNMASServer.sh

EXPOSE 7777

ENTRYPOINT ["/home/ue4/LinuxServer/SNMASServer.sh"]