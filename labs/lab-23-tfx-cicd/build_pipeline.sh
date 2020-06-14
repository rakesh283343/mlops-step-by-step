#!/bin/bash
# Copyright 2019 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#            http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Submits a Cloud Build job that builds and deploys
# the pipelines and pipelines components 

SUBSTITUTIONS=\
_PIPELINE_NAME=tfx-covertype-classifier-training,\
_TFX_IMAGE_NAME=tfx-image,\
_GCP_REGION=us-central1,\
_ARTIFACT_STORE_URI=gs://mlops-workshop-artifact-store,\
_DATA_ROOT_URI=gs://mlops-workshop-staging/covertype_dataset,\
_PIPELINE_FOLDER=lab-23-tfx-cicd/pipeline-dsl,\
_PIPELINE_DSL=pipeline_dsl.py,\
_KFP_INVERSE_PROXY_HOST=[YOUR_INVERSE_PROXY],\
_PYTHON_VERSION=3.7,\
_RUNTIME_VERSION=1.15,\
TAG_NAME=test

gcloud builds submit .. --config cloudbuild.yaml --substitutions $SUBSTITUTIONS


