fill_library_files () {
    # master make file for library projects
    template="plugins/library/templates/Makefile.tmpl"
    pattern="{{LIBMAKEFILE}}"
    fill_tool_var $template $pattern
    # app.src file
    template="plugins/library/templates/PROJECT.app.src.tmpl"
    pattern="{{LIBAPPSRC}}"
    fill_tool_var $template $pattern
    # test module
    template="plugins/common/templates/PROJECT-tests.lfe.tmpl"
    pattern="{{LIBTESTMODULE}}"
    fill_tool_var $template $pattern
    # module
    template="plugins/common/templates/PROJECT.lfe.tmpl"
    pattern="{{LIBMODULE}}"
    fill_tool_var $template $pattern
}
