export NGC_CLI_API_KEY="bDByZTRsZjhmOWNyNnVlMmFpYmlqcnJjaHI6YWE5ZGZhYmMtYmRkYi00NjMxLWJmOWEtMTQ4N2RmNTk3NDk1"
# Choose a container name for bookkeeping
export CONTAINER_NAME=phi-3-mini-4k-instruct
# The container name from the previous ngc registgry image list command
Repository=nim/microsoft/phi-3-mini-4k-instruct

nvcr.io/nim/microsoft/phi-3-mini-4k-instruct-patch:1.1.0

Latest_Tag=latest
# Choose a LLM NIM Image from NGC
export IMG_NAME="nvcr.io/${Repository}:${Latest_Tag}"
# Choose a path on your system to cache the downloaded models
export LOCAL_NIM_CACHE=~/.cache/nim
mkdir -p "$LOCAL_NIM_CACHE"
# Start the LLM NIM
docker run -it --rm --name=$CONTAINER_NAME \
  --gpus='"device=0"' \
  --shm-size=16GB \
  -e NGC_API_KEY=$NGC_CLI_API_KEY \
  -v "$LOCAL_NIM_CACHE:/opt/nim/.cache" \
  -u root \
  -p 8000:8000 \
  $IMG_NAME /bin/bash


# sha256:e600ea4b6bb295d40ff3c7bc6523e0daf319520b6aec0e9f455e20a89d304ac9