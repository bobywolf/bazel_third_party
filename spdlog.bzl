# bazel build file for spdlog
cc_library(
    name = "headers",
    visibility = ["//visibility:public"],
    hdrs = glob(["include/**/*.h*"]),
    srcs = glob(["src/**/*.cpp"]),
    copts = ["-DSPDLOG_COMPILED_LIB"],
    includes = ["include"],
)

cc_binary(
    name="bench",
    copts = ["-DSPDLOG_COMPILED_LIB"],
    srcs=[
        "bench/utils.h",
        "bench/bench.cpp"
    ],
    includes=[
        "bench"
    ],
    deps=[
        ":headers"
    ]
)

cc_binary(
    name="async_bench",
    copts = ["-DSPDLOG_COMPILED_LIB"],
    srcs=[
        "bench/utils.h",
        "bench/async_bench.cpp"
    ],
    includes=[
        "bench"
    ],
    deps=[
        ":headers"
    ]
)

cc_binary(
    name="latency",
    copts = ["-DSPDLOG_COMPILED_LIB"],
    srcs=[
        "bench/utils.h",
        "bench/latency.cpp"
    ],
    includes=[
        "bench"
    ],
    deps=[
        ":headers"
    ]
)

cc_binary(
    name="example",
    copts = ["-DSPDLOG_COMPILED_LIB"],
    srcs=[
        "example/example.cpp"
    ],
    includes=[
        "bench"
    ],
    deps=[
        ":headers"
    ]
)