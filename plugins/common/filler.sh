fill_common_files () {
    # base make include
    template="plugins/common/templates/common.mk.tmpl"
    pattern="{{COMMONMK}}"
    fill_tool_var $template $pattern
    # ignores
    template="plugins/common/templates/.gitignore.tmpl"
    pattern="{{GITIGNORE}}"
    fill_tool_var $template $pattern
    # expm package file
    template="plugins/common/templates/package.exs.tmpl"
    pattern="{{PACKAGE}}"
    fill_tool_var $template $pattern
    # rebar config file
    template="plugins/common/templates/rebar.config.tmpl"
    pattern="{{REBAR}}"
    fill_tool_var $template $pattern
    # Travis CI file
    template="plugins/common/templates/.travis.yml.tmpl"
    pattern="{{TRAVISCI}}"
    fill_tool_var $template $pattern
    # README file
    template="plugins/common/templates/README.rst.tmpl"
    pattern="{{README}}"
    fill_tool_var $template $pattern
}
