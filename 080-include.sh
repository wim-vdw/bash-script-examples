log() {
  local message=$1
  local log_level=$2
  local log_level_message=""
  if [ "$log_level" == "INFO" ]; then
    log_level_message="[INFO] "
  elif [ "$log_level" == "WARNING" ]; then
    log_level_message="[WARNING] "
  elif [ "$log_level" == "ERROR" ]; then
    log_level_message="[ERROR] "
  fi
  timestamp=$(date "+%Y-%m-%d %H:%M:%S")
  echo "$timestamp $log_level_message$message"
}
