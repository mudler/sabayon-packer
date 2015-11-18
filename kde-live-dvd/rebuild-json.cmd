# %~dp0 batch path wildcard
#Windoze users Lazy edition
Echo "rebuilding Json's from yaml files"
#copy %~dp0\sabayon-packer\*.json %~dp0\sabayon-packer\*.json.old #add add backup Statment
python3 make-yaml-2json.py3 %~dp0 \yaml\*.json > C:\Users\mike\Documents\GitHub\sabayon-packer\kde-live-dvd
Echo "rebuilding Compleaded"