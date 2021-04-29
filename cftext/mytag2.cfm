<!---変数が存在しない場合はデフォルトをセット--->
<cfparam  name="param" default="">
<cfparam  name="returnVariable" default="">

<cfset retval   = "<strong>">

    <cfloop index="idx" from="1" to="#len(attributes.param)#">
        <cfset retval = retval & mid(attributes.param,idx, 1) &"★">
    </cfloop>

    <cfset retval = retval&"</strong>">

    <cfset "caller.#attributes.returnVarible#" = retval>