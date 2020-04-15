load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def third_party_repositories():
    new_git_repository(
        name = "googletest",
        remote = "https://github.com/google/googletest",
        tag = "release-1.10.0",
    )