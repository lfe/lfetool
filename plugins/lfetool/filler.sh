fill_lfetool_files () {
    template="plugins/lfetool/templates/usage.txt.tmpl"
    pattern="{{USAGE}}"
    fill_tool_var $template $pattern
}
