#!/bin/bash

chmod +x aptinstall.sh
chmod +x up.sh

echo 'Install packages'
./aptinstall.sh

adduser judger --disabled-password
chown judger:judger -R /home/judger
chmod +x /home/judger/gen.py
chmod +x /home/judger/judge_client
su judger
cd /home/judger
cat > uoj_judger/include/uoj_work_path.h <<UOJEOF
#define UOJ_WORK_PATH "/home/judger/uoj_judger"
#define UOJ_JUDGER_BASESYSTEM_UBUNTU1804
#define UOJ_JUDGER_PYTHON3_VERSION "3.6"
#define UOJ_JUDGER_FPC_VERSION "3.0.4"
UOJEOF
cd uoj_judger
make
cd /home/judger/