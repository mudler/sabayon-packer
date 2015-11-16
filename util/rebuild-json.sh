#
Echo "rebuilding Json's from yaml files"
python3 ./sabayon-packer/util/make.py ./sabayon-packer/yaml/*.json > ./sabayon-packer/
Echo "rebuilding Compleaded"
