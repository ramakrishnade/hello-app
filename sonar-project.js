const scanner = require('sonarqube-scanner');

scanner(
  {
    serverUrl: 'http://192.168.0.11:9000/',
    token: 'sqa_855e2848ad7fc2277d9b4e849b5bb8900246afed',
    options: {
      'sonar.projectName': 'hello-app',
      'sonar.projectDescription': 'Description for "hello-app" project...',
      'sonar.sources': 'src',
      //'sonar.tests': 'test',
    },
  },
  () => process.exit(),
);