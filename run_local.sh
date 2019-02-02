#!/bin/sh

export TOKEN="<NTM0MDY0NTg4OTM4MDE4ODI2.Dzei1A.i0tAsK2dP0esJmQOiWl2BjrR4II>"
export MOD_ROLE_ID="<485746137215533067>"
export CAN_BAN_ROLE_ID="<485746137215533067>"
export CAN_KICK_ROLE_ID="<485746137215533067>"
export WARNING_ROLE_ID="<417395427080536074>"
export MUTE_ROLE_ID="<503960249301204993>"
export LOG_CHANNEL_ID="<541374623460229195>"
export SERVER_ID="<485744773324603392>"
export OWNER_ID="<232911726603927552>"
export RESTART_COMMAND="sh run_local.sh"

LATEST_BUILD="$(find ./build/libs | sort --version-sort --field-separator=- --key=2,2 | tail -n 1)"

until java -jar "${LATEST_BUILD}"; do
    echo "BanUtil crashed with exit code $?.  Respawning.." >&2
    sleep 1
done

