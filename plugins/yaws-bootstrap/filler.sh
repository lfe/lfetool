fill_yaws_bootstrap_files () {
    # LFE modules
    template="plugins/yaws-bootstrap/templates/PROJECT-content.lfe.tmpl"
    pattern="{{YAWSBOOTSTRAPCONTENTMODULE}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/PROJECT-nav.lfe.tmpl"
    pattern="{{YAWSBOOTSTRAPNAVMODULE}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/PROJECT-routes.lfe.tmpl"
    pattern="{{YAWSBOOTSTRAPROUTESMODULE}}"
    fill_tool_var $template $pattern
    # css files
    template="plugins/yaws-bootstrap/templates/bootstrap.css"
    pattern="{{YAWSBOOTSTRAPCSS}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/bootstrap-min.css"
    pattern="{{YAWSBOOTSTRAPCSSMIN}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/bootstrap-slate.css"
    pattern="{{YAWSBOOTSTRAPCSSSLATE}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/bootstrap-slate-min.css"
    pattern="{{YAWSBOOTSTRAPCSSMINSLATE}}"
    fill_tool_var $template $pattern
    # js files
    template="plugins/yaws-bootstrap/templates/bootstrap.js"
    pattern="{{YAWSBOOTSTRAPJS}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/bootstrap-min.js"
    pattern="{{YAWSBOOTSTRAPJSMIN}}"
    fill_tool_var $template $pattern
    # font files
    template="plugins/yaws-bootstrap/templates/glyphicons-halflings-regular.eot"
    pattern="{{YAWSBOOTSTRAPFONTEOT}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/glyphicons-halflings-regular.svg"
    pattern="{{YAWSBOOTSTRAPFONTSVG}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/glyphicons-halflings-regular.ttf"
    pattern="{{YAWSBOOTSTRAPFONTTTF}}"
    fill_tool_var $template $pattern
    template="plugins/yaws-bootstrap/templates/glyphicons-halflings-regular.woff"
    pattern="{{YAWSBOOTSTRAPFONTWOFF}}"
    fill_tool_var $template $pattern
}
