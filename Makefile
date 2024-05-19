SCRIPTS_DIR := scripts
INIT_APP_SCRIPT := $(SCRIPTS_DIR)/init_app.sh
CLEAN_IOS_SCRIPT := $(SCRIPTS_DIR)/clean_ios.sh
VERSION_SCRIPT := $(SCRIPTS_DIR)/version.sh
CODEGEN_SCRIPT := $(SCRIPTS_DIR)/build_runner.sh
INTL_SCRIPT := $(SCRIPTS_DIR)/intl_with_format.sh
SPIDER_BUILD_SCRIPT := $(SCRIPTS_DIR)/spider_build.sh
PRECOMPILE_SVG_SCRIPT := $(SCRIPTS_DIR)/precompile_svg.sh
FORMAT_SCRIPT := $(SCRIPTS_DIR)/format.sh

# Tasks to run each script
init_app:
	sh $(INIT_APP_SCRIPT)

clean_ios:
	sh $(CLEAN_IOS_SCRIPT)

version:
	sh $(VERSION_SCRIPT)

codegen:
	sh $(CODEGEN_SCRIPT)

intl_with_format:
	sh $(INTL_SCRIPT)

spider_build:
	sh $(SPIDER_BUILD_SCRIPT)

precompile_svg:
	sh $(PRECOMPILE_SVG_SCRIPT)

format:
	sh $(FORMAT_SCRIPT)
