#! /bin/bash

echo -n "choose chart to update: "
read chartname

yaml_file="./$chartname/Chart.yaml" 

version=$(yq eval '.version' "$yaml_file")

helm package $chartname

mv $chartname-$version.tgz ./charts

helm repo index ./charts --url https://nelsonjanusson.github.io/portfolio_chart_repo
git reset
git add ./charts/
git commit -m "Add new Helm chart"
git push origin main:test3