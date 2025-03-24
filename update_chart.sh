#! /bin/bash
yaml_file="./application-deployment/Chart.yaml" 
version=$(yq eval '.version' "$yaml_file")
chartname=$(yq eval '.name' "$yaml_file")
helm dependency update ./application-deployment
helm package application-deployment
mv $chartname-$version.tgz ./docs
helm repo index ./docs --url https://nelsonjanusson.github.io/portfolio_chart_repo
