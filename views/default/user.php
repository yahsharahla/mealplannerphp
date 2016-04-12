{{extend 'layout.html'}}

<h2 class="center">
{{=T('Sign Up') if request.args(0) == 'register' else T('Log In') if request.args(0) == 'login' else T(request.args(0).replace('_',' ').title())}}
</h2>

<div class="container-fluid">
    <div class="row">
        <div id="web2py_user_form" class="col-md-4 col-md-offset-4">
        {{
        if request.args(0)=='login':
            if not 'register' in auth.settings.actions_disabled:
                form.add_button(T('Sign Up'),URL(args='register', vars={'_next': request.vars._next} if request.vars._next else None),_class='btn btn-default')
            pass
            if not 'request_reset_password' in auth.settings.actions_disabled:
                form.add_button(T('Lost Password'),URL(args='request_reset_password'),_class='btn btn-default')
            pass
        pass
        =form
        }}
        </div>
    </div>
</div>


{{block page_js}}
<script>
    jQuery("#web2py_user_form input:visible:enabled:first").focus();
{{if request.args(0)=='register':}}
    web2py_validate_entropy(jQuery('#auth_user_password'),100);
{{elif request.args(0)=='change_password':}}
    web2py_validate_entropy(jQuery('#no_table_new_password'),100);
{{pass}}
</script>
{{end page_js}}