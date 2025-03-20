#! /bin/bash

echo -n "choose chart to update: "
read chartdirectory
yaml_file="./$chartdirectory/Chart.yaml" 
version=$(yq eval '.version' "$yaml_file")
chartname=$(yq eval '.name' "$yaml_file")
helm package $chartdirectory
mv $chartname-$version.tgz ./docs
helm repo index ./docs --url https://nelsonjanusson.github.io/portfolio_chart_repo
