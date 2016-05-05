## to do need to trim
##https://gist.githubusercontent.com/ingydotnet/6833981/raw/c4070a4ef5baf5a780d55a8e05538c87839a75a3/load-yaml-dump-json.bash
#!/bin/bash

# Usage:
#
#    cat file.yml | load-yaml-dump-json
#    ./load-yaml-dump-json      # enter data and ctl-d when finished

yaml=`cat`

echo == Perl
echo YAML.pm:
echo "$yaml" | perl -0E 'use YAML; use JSON; say encode_json Load <>'
echo YAML::XS:
echo "$yaml" | perl -0E 'use YAML::XS; use JSON; say encode_json Load <>'
echo YAML::Syck:
echo "$yaml" | perl -0E 'use YAML::Syck; use JSON; say encode_json Load <>'
echo YAML::Tiny:
echo "$yaml" | perl -0E 'use YAML::Tiny; use JSON; say encode_json Load <>'

echo
echo == Python==
echo PyYaml:
echo "$yaml" | python -c 'import sys, yaml, json; print json.dumps(yaml.load(sys.stdin.read()))'

echo
echo == Ruby==
echo Psych:
echo "$yaml" | ruby -e 'require "yaml"; require "json"; puts JSON.dump(YAML.load(STDIN.read))'

echo
echo == Node.js ==
echo js-node:
echo "$yaml" | node -e 'f = require("fs"); y = require("js-yaml"); console.log(JSON.stringify(y.load(f.readFileSync("/dev/stdin").toString())))'


