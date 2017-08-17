#!/bin/bash

# Build
sudo pip install -r requirements.txt
sudo apt-get install pylint

# Code Analysis
pylint stock_alerter/ -f parseable > analysis.txt

# Test with Code Coverage
nose2 --junit-xml --with-coverage 

# Download and configure the Testspace client
mkdir -p $HOME/bin
curl -fsSL https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | tar -zxvf- -C $HOME/bin
CI=true testspace config url samples.testspace.com

# Push content (refer to ".testspace.txt" for list of content)
testspace analysis.txt{lint} nose2.xml{stock_alerter} coverage.xml "#c9.Build" --repo git
