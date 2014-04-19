fill_script () {
    template="plugins/script/templates/SCRIPT.tmpl"
    pattern="{{SCRIPTFILE}}"
    fill_tool_var $template $pattern
}
