.DEFAULT_GOAL := help

MAKEFILE_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
BUILD_DIR := $(MAKEFILE_DIR)/.build

.PHONY: clean clean-dry-run help

clean:
	@rm -rf -- "$(BUILD_DIR)"

clean-dry-run:
	@printf '%s\n' "$(BUILD_DIR)"

help:
	@printf '%s\n' 'make clean          删除项目根 .build 生成目录' 'make clean-dry-run  仅显示将清理的精确路径，不执行删除' 'make help           显示此帮助；清理不会触碰 Sources、Tests、Package.swift、Package.resolved'
