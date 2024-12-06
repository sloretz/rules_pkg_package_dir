def _create_file_impl(ctx):
    outputfile = ctx.actions.declare_file(ctx.label.name + ".txt")

    ctx.actions.run_shell(
        outputs = [outputfile],
        command = "touch '%s'" % outputfile.path,
    )

    return DefaultInfo(
        files = depset([outputfile]),
    )

create_file = rule(
    implementation = _create_file_impl,
    attrs = {},
)
