## DO NOT EDIT!
# This file was provisioned by Terraform
# File origin: https://github.com/Arrow-air/tf-github/tree/main/src/templates/rust-all/Makefile.tftpl

DOCKER_NAME          := arrow-lib-template-rust
PACKAGE_NAME         := $(name)

PUBLISH_PACKAGE_NAME := $(name)

help: .help-base .help-rust .help-python .help-cspell .help-markdown .help-editorconfig .help-commitlint .help-toml
build: rust-build

export

clean: rust-clean
release: rust-release
publish: rust-publish
test: rust-test-all cspell-test toml-test python-test md-test-links editorconfig-test
tidy: rust-tidy toml-tidy python-tidy editorconfig-tidy
all: clean test build release publish

include .make/base.mk
include .make/cspell.mk
include .make/markdown.mk
include .make/editorconfig.mk
include .make/commitlint.mk
include .make/toml.mk
include .make/rust.mk
include .make/python.mk
