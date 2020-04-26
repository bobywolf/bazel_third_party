load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def third_party_repositories():
    # new_git_repository(
    #     name = "googletest",
    #     build_file = "gtest.bzl",
    #     remote = "https://github.com/google/googletest",
    #     tag = "release-1.10.0",
    # )
    # Abseil
    http_archive(
        name = "com_google_absl",
        urls = ["https://github.com/abseil/abseil-cpp/archive/master.zip"],
        strip_prefix = "abseil-cpp-master",
    )

    http_archive(
        name = "rules_cc",
        strip_prefix = "rules_cc-master",
        urls = ["https://github.com/bazelbuild/rules_cc/archive/master.zip"],
    )

    http_archive(
        name = "rules_python",
        strip_prefix = "rules_python-master",
        urls = ["https://github.com/bazelbuild/rules_python/archive/master.zip"],
    )

    http_archive(
        name = "com_google_gtest",
        build_file = "@com_bobywolf_bazel_third_party//:gtest.bzl",
        strip_prefix = "googletest-release-1.10.0",
        urls = ["https://github.com/google/googletest/archive/release-1.10.0.tar.gz"],
    )

    http_archive(
        name = "com_gabime_spdlog",
        build_file = "@com_bobywolf_bazel_third_party//:spdlog.bzl",
        strip_prefix = "spdlog-1.5.0",
        urls = ["https://github.com/gabime/spdlog/archive/v1.5.0.zip"],
    )

    http_archive(
        name = "com_google_glog",
        strip_prefix = "glog-0.4.0",
        urls = ["https://github.com/google/glog/archive/v0.4.0.zip"],
    )

    http_archive(
        name = "com_github_gflags_gflags",
        strip_prefix = "gflags-2.2.2",
        urls = [
            "https://mirror.bazel.build/github.com/gflags/gflags/archive/v2.2.2.tar.gz",
            "https://github.com/gflags/gflags/archive/v2.2.2.tar.gz",
        ],
    )