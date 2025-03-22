# Chart Repository For Portfolio Project
This repository handles custom helm charts for my portfolio project. The root directory contains helm charts, a utility bash script (update_chart.sh) to use when a chart is updated and a docs folder from which a chart repository is hosted using Github pages.

The update_chart.sh is supposed to be called after updating a chart. When executed it will prompt the user for the name of the helm chart which has been updated, it will then package said chart, move it to the docs folder and generate an updated index.yaml. The util has been developed for use on macos and to run it requires both helm and yq (a yaml parser) to be installed. it also needs to be made executable. Theese requirements can be fulfilled by running the following script in the root directory. 
```console
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
brew install yq
chmod +x update_chart.sh
```
