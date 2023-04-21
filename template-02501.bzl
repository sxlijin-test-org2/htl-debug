




































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































def _template_impl(ctx):
    out = ctx.actions.declare_file(ctx.attr.output)
    ctx.actions.expand_template(
        output = out,
        template = ctx.file.template,
        substitutions = ctx.attr.substitutions,
    )
    return [DefaultInfo(files = depset([out]))]

template = rule(
    implementation = _template_impl,
    attrs = {
        "output": attr.string(mandatory = True),
        "substitutions": attr.string_dict(mandatory = True),
        "template": attr.label(
            allow_single_file = True,
            mandatory = True,
        ),
    },
)
