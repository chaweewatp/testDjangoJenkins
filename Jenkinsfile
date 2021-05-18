#!/usr/bin/groovy

node {
  // If you are having issues with your project not getting updated,
  // try uncommenting the following lines.
  //stage 'Checkout'
  //checkout scm
  //sh 'git submodule update --init --recursive'

  stage 'Update Python Modules'
  // Create a virtualenv in this folder, and install or upgrade packages
  // specified in requirements.txt; https://pip.readthedocs.io/en/1.1/requirements.html
  sh 'python3 -m venv env && source env/bin/activate && pip install --upgrade -r requirements.txt'

  stage 'Test'
  // Invoke Django's tests
  sh 'source env/bin/activate && python manage.py test'
}




// export WORKSPACE=`pwd`
// # Create/Activate virtualenv
// python3 -m venv env
//
// source env/bin/activate
// # Install Requirements
// pip install -r requirements.txt
// # Run tests
// python manage.py test