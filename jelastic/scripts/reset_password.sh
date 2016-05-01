#!/bin/bash

export JAVA_HOME="/usr/java/default/";

#
# This is an example of reset password hook in Jelastic
#

#$J_OPENSHIFT_APP_ADM_USER        ;   Operate this variable for the username
#$J_OPENSHIFT_APP_ADM_PASSWORD    ;   Use this varible for your password

function _setPassword() {
        /opt/repo/versions/7/bin/add-user.sh --user ${J_OPENSHIFT_APP_ADM_USER} --password ${J_OPENSHIFT_APP_ADM_PASSWORD} --silent=true --enable
}
