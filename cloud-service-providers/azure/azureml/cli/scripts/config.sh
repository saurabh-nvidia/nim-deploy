#!/bin/bash

# Copyright (c) 2021, NVIDIA CORPORATION. All rights reserved.
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# AzureML Workspace and corresponding container registry related information
subscription_id="b7d41fc8-d35d-41db-92ed-1f7f1d32d4d9"
resource_group="saurabha-sae-msft"
workspace="saurabha_aml"
location="westus2" # eg: "southcentralus", "westeurope" etc.

# Azure keyvault creation related information
ngc_api_key="bDByZTRsZjhmOWNyNnVlMmFpYmlqcnJjaHI6YWE5ZGZhYmMtYmRkYi00NjMxLWJmOWEtMTQ4N2RmNTk3NDk1"
keyvault_name="NGC-Credentials"
email_address="saurabha@nvidia.com"

# Container related information
 # NOTE: Verify that your AML workspace can access this ACR
acr_registry_name="saurabharegistry"

image_name="phi-3-mini-4k"

ngc_container="nvcr.io/nim/microsoft/phi-3-mini-4k-instruct:latest"

# Endpoint related information
endpoint_name="phi-3-mini-4k-nim-endpoint-aml-1"

# Deployment related information
# deployment_name="phi-3-mini-4k-trtllm-1"
deployment_name="phi-3-mini-4k-trtllm-1"

instance_type="Standard_NC24ads_A100_v4"