#!/usr/bin/bash

set -o vi

# Cloud Foundry no_proxy settings
#export set no_proxy=api.grc-apps.svc.ice.ge.com,login.grc-apps.svc.ice.ge.com,\
#loggregator.grc-apps.svc.ice.ge.com,uaa.grc-apps.svc.ice.ge.com,console.grc-apps.svc.ice.ge.com,$no_proxy

# Add javac to PATH
export set PATH=$PATH:"/c/Program Files/Java/jdk1.8.0_45/bin"

# Alias
alias gvim="'C:/Program Files (x86)/Vim/vim74/gvim.exe'"

# HTTP_PROXY
export HTTP_PROXY="http://218024862:password@pitc-zscaler-americas-cincinnati3pr.proxy.corporate.ge.com:80"
export HTTPS_PROXY="https://218024862:password@pitc-zscaler-americas-cincinnati3pr.proxy.corporate.ge.com:80"

# PATH
export GOPATH="/c/gocode"
export PATH="$PATH":"$GOPATH/bin"

# Cloud Foundry Go buildpack
export GO_BUILD_PACK="https://github.com/cloudfoundry/go-buildpack"
export CF_ENDPOINT="https://api.grc-apps.svc.ice.ge.com"

