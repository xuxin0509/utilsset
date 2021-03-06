#!/bin/bash

# make sure current process is bash, or exit and show usage
count=`ps aux | grep -i $$ | grep -ciE "(/| |da)sh[ ]+$0"`
if [ $count -gt 0 ]; then
  echo "usage:"
  echo "  bash $0"
  exit 0
fi

# cur/bin/env path
CUR_DIR=$(cd `dirname $BASH_SOURCE` && /bin/pwd)

source ${CUR_DIR}/os_type.sh
source ${CUR_DIR}/path.sh
source ${CUR_DIR}/${OS_TYPE}/wizard_${OS_TYPE}.sh
source ${CUR_DIR}/setup_vim.sh
