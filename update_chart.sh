#! /bin/bash

echo -n "choose chart to update: "
read chartname

yaml_file="./$chartname/Chart.yaml" 

version=$(yq eval '.version' "$yaml_file")

helm package $chartname

mv $chartname-$version.tgz ./docs

helm repo index ./docs --url https://nelsonjanusson.github.io/portfolio_chart_repo
