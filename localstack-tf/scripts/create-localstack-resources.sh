#!/usr/bin/env bash

function runTerraformApply() {
    printf "Runnning terraform: %s\n" $1
    cd $1
    terraform init
    terraform apply --auto-approve
}

runTerraformApply /tmp/terraform/dynamodb/checklistMetadataTable/
