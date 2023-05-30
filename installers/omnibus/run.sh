#!/bin/bash

source .env

docker run \
	--platform=linux/amd64 \
	-it \
	-p $LEGEND_OMNIBUS_SUPERVISOR_PORT:$LEGEND_OMNIBUS_SUPERVISOR_PORT \
	-p $LEGEND_OMNIBUS_SUPERVISOR_STATUS_CHECKER_PORT:$LEGEND_OMNIBUS_SUPERVISOR_STATUS_CHECKER_PORT \
	-p $LEGEND_OMNIBUS_NGINX_PORT:$LEGEND_OMNIBUS_NGINX_PORT \
	-p $LEGEND_OMNIBUS_GITLAB_PORT:$LEGEND_OMNIBUS_GITLAB_PORT \
	-p $LEGEND_OMNIBUS_ENGINE_PORT:$LEGEND_OMNIBUS_ENGINE_PORT \
	-p $LEGEND_OMNIBUS_SDLC_PORT:$LEGEND_OMNIBUS_SDLC_PORT \
	-p $LEGEND_OMNIBUS_PURE_IDE_PORT:$LEGEND_OMNIBUS_PURE_IDE_PORT \
	-p $LEGEND_OMNIBUS_STUDIO_PORT:$LEGEND_OMNIBUS_STUDIO_PORT \
	legend-omnibus:latest
