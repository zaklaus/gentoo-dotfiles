#!/bin/bash

set -xe

sudo emerge --sync && sudo emerge -avtDUu @world && sudo emerge -ac

