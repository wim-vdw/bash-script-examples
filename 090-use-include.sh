#!/usr/bin/env bash

source ./080-include.sh

log "******************************************************"
log "Wim Van den Wyngaert"
log "Host name: $(hostname)"
log "Current dir: $(pwd)"
log "This is an info message." "INFO"
log "This is a warning message". "WARNING"
log "This is an error message." "ERROR"
log "******************************************************"
