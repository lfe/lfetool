fill_yaws_files () {
    # yaws make include
    template="plugins/yaws/templates/yaws.mk.tmpl"
    pattern="{{YAWSMK}}"
    fill_tool_var $template $pattern
    # master make file for yaws projects
    template="plugins/yaws/templates/Makefile.tmpl"
    pattern="{{YAWSMAKEFILE}}"
    fill_tool_var $template $pattern
    # yaws conf
    template="plugins/yaws/templates/yaws.conf.tmpl"
    pattern="{{YAWSCONF}}"
    fill_tool_var $template $pattern
    # yaws rebar
    template="plugins/yaws/templates/rebar.config.tmpl"
    pattern="{{YAWSREBAR}}"
    fill_tool_var $template $pattern
    # entry point module
    template="plugins/yaws/templates/PROJECT.lfe.tmpl"
    pattern="{{YAWSMODULE}}"
    fill_tool_var $template $pattern
    # routes module
    template="plugins/yaws/templates/PROJECT-routes.lfe.tmpl"
    pattern="{{YAWSROUTESMODULE}}"
    fill_tool_var $template $pattern
    # content module
    template="plugins/yaws/templates/PROJECT-content.lfe.tmpl"
    pattern="{{YAWSCONTENTMODULE}}"
    fill_tool_var $template $pattern
    # util module
    template="plugins/yaws/templates/PROJECT-util.lfe.tmpl"
    pattern="{{YAWSUTILMODULE}}"
    fill_tool_var $template $pattern
}
