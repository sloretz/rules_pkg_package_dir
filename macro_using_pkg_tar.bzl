load("@rules_pkg//pkg:tar.bzl", "pkg_tar")

def macro_using_pkg_tar(name, srcs, **kwargs):
    pkg_tar(
        name = name,
        extension = "tar.gz",
        compressor_args = "--fast",
        strip_prefix = "/",
        package_dir = "/data",
        srcs = srcs,
        **kwargs
    )
