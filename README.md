[![Testspace](http://www.testspace.com/img/Testspace.png)](http://www.testspace.com)

***

## Python/Unittest sample for demonstrating Testspace based on the [test_driven_python repo](https://github.com/siddhi/test_driven_python)

Sample demonstrates techniques for using Testspace with Python code and the [`unittest` test framework](https://docs.python.org/2/library/unittest.html) together with [`cov-core` code coverage tool](https://pypi.python.org/pypi/cov-core) and [`nose2` runner](https://github.com/nose-devs/nose2).

***
Using Multiple Online CI Services:

[![Build Status](https://travis-ci.org/testspace-samples/php.phpunit.svg?branch=master)](https://travis-ci.org/testspace-samples/php.phpunit)
[![CircleCI](https://circleci.com/gh/testspace-samples/python.unittest.svg?style=svg)](https://circleci.com/gh/testspace-samples/python.unittest)
[![Run Status](https://api.shippable.com/projects/5710a3e02a8192902e1c1f8d/badge?branch=master)](https://app.shippable.com/projects/5710a3e02a8192902e1c1f8d)


***
Publishing **Test Content** using www.testspace.com.

[![Space Health](https://samples.testspace.com/spaces/757/badge)](https://samples.testspace.com/spaces/757 "Test Cases")
[![Space Metric](https://samples.testspace.com/spaces/757/metrics/683/badge)](https://samples.testspace.com/spaces/757/schema/Code%20Coverage "Code Coverage (lines)")
[![Space Metric](https://samples.testspace.com/spaces/757/metrics/684/badge)](https://samples.testspace.com/spaces/757/schema/Static%20Analysis "Static Analysis (issues)")

*** 

In order to run this sample you will need a host workstation with installed python 2.6+.

Buiding:

<pre>
sudo pip install -r requirements.txt
sudo apt-get install pylint
</pre>


Running Static Analysis: 
<pre>
pylint stock_alerter/ -f parseable > analysis.txt
</pre> 

Running Tests with Code Coverage: 

<pre>
nose2 --junit-xml --with-coverage
</pre> 


Push Content using **Testspace client**: 

<pre>
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux.tgz | sudo tar -zxvf- -C /usr/local/bin
testspace @.testspace.txt $TESTSPACE_TOKEN/$GITHUB_ORG:$REPO_NAME/$BRANCH_NAME#$BUILD_NUMBER
</pre> 

Checkout the published [Test Content](https://samples.testspace.com/projects/testspace-samples:python.unittest). Note that the `.testspace.txt` file contains the [set of files](http://help.testspace.com/how-to:publish-content#publishing-via-content-list-file) to publish. 

***

To replicate this sample: 
  - Setup account at www.testspace.com.
  - Create a Environment variable called `TESTSPACE_TOKEN`
     - `TESTSPACE_TOKEN` = `credentials@Your-Org-Name.testspace.com`
     - `credentials` set to `username:password` or your [access token](http://help.testspace.com/reference:client-reference#login-credentials)
     - To [use Testspace with a CI system](http://help.testspace.com/how-to:add-to-ci-workflow), store `TESTSPACE_TOKEN` as a secure environment variable
