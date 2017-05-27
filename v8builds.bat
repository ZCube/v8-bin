set DEPOT_TOOLS_WIN_TOOLCHAIN=0
set GYP_MSVS_VERSION=2017
set target_cpu=x64
call gn gen out.gn/_x64.release -args="target_cpu=\"x64\" v8_enable_i18n_support=false is_debug=false is_component_build=true"
ninja -C out.gn/_x64.release
set target_cpu=x86
call gn gen out.gn/_ia32.release -args="target_cpu=\"x86\" v8_enable_i18n_support=false is_debug=false is_component_build=true"
ninja -C out.gn/_ia32.release
