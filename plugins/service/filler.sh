fill_service_files () {
    # otp make include
    template="plugins/service/templates/otp.mk.tmpl"
    pattern="{{OTPMK}}"
    fill_tool_var $template $pattern
    # master make file for service projects
    template="plugins/service/templates/Makefile.tmpl"
    pattern="{{SVCMAKEFILE}}"
    fill_tool_var $template $pattern
    # app.src file
    template="plugins/service/templates/PROJECT.app.src.tmpl"
    pattern="{{SVCAPPSRC}}"
    fill_tool_var $template $pattern
    # test module
    template="plugins/service/templates/PROJECT-tests.lfe.tmpl"
    pattern="{{SVCTESTMODULE}}"
    fill_tool_var $template $pattern
    # server module
    template="plugins/service/templates/PROJECT-server.lfe.tmpl"
    pattern="{{SVCSERVER}}"
    fill_tool_var $template $pattern
    # supervisor
    template="plugins/service/templates/PROJECT-sup.lfe.tmpl"
    pattern="{{SVCSUP}}"
    fill_tool_var $template $pattern
    # app
    template="plugins/service/templates/PROJECT-app.lfe.tmpl"
    pattern="{{SVCAPP}}"
    fill_tool_var $template $pattern
}
