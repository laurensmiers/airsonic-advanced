#!/bin/bash

set -e

LATEST_RELEASE_TAG=$(curl -s https://api.github.com/repos/airsonic-advanced/airsonic-advanced/releases/latest | grep "tag_name" | awk '{print substr($2, 2, length($2)-3)}')

wget https://github.com/airsonic-advanced/airsonic-advanced/releases/download/$LATEST_RELEASE_TAG/airsonic.war
