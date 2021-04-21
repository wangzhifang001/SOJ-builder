#!/bin/bash

chmod +x aptinstall.sh
chmod +x confhttpd.sh
chmod +x confsql.sh
chmod +x privilege.sh
chmod +x up.sh

echo 'Install packages'
./aptinstall.sh
./confhttpd.sh
./confsql.sh

cd /opt/judger/uoj_judger
cat > /opt/judger/uoj_judger/include/uoj_work_path.h <<UOJEOF
#define UOJ_WORK_PATH "/opt/judger/uoj_judger"
#define UOJ_JUDGER_BASESYSTEM_UBUNTU1804
#define UOJ_JUDGER_PYTHON3_VERSION "3.6"
#define UOJ_JUDGER_FPC_VERSION "3.0.4"
UOJEOF
make

chown www-data:www-data -R /opt/judger