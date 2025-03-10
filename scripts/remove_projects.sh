#!/bin/bash
#
# ============================================================
# Red Hat Consulting EMEA, 2025
#
# Created-------:
# ============================================================
# Description--: Delete Projects
# ============================================================
#
# ============================================================
# Pre Steps---:
# chmod 774 *.sh
# ============================================================
#
#
#
# EOH


# New USERS array
USERS=("user08" "user09" "user10" "user11" "user12" "user13" "user14" "user15" "user16" "user17" "user18" "user19" "user20" "user21" "user22" "user23" "user24" "user25")
NAMESPACES=("-gitops-argocd" "-jump-app-cicd" "-jump-app-dev" "-jump-app-dev-helm" "-jump-app-dev-k8s" "-jump-app-pre" "-jump-app-pro")


# checking USERS array
for i in ${USERS[@]}
do
    for ns in ${NAMESPACES[@]}
    do
        PRJ_NAME=${i}${ns}
        echo "Deleting project use: ${PRJ_NAME}"
        oc delete project ${PRJ_NAME} --wait=true
    done
done

exit 0


# EOF