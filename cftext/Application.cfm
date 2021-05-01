<cfprocessingdirective pageencoding="utf-8">
<cfsetting 
enableCFoutputOnly = "yes" 
showDebugOutput = "yes" >


<cfapplication name="MyApp" sessionmanagement="yes" setclientcookies="yes" sessiontimeout="#createTimespan(0, 2, 0, 0)#">

<cferror  type="exception"  exception="any" template="error.cfm">
<cferror  type="Request"  template="error.cfm">

<cflock scope="application" timeout="10" type="exclusive">
    <cfif Not isDefined('Application.loaded')>

        <cffunction name="udfHTMLEditFormatBR" output="false">
            <cfargument  name="var" required="true" type="any">
            <cfreturn reReplace(argument.var, "\n", "<br>","all")>
        </cffunction>

        <cfset Application.udfHTMLEditFormatBR = variables.udfHTMLEditFormatBR>

        <cfscript>
            Application.system = StructNew();
            Application.system.default_name = "名前なし";
            Application.system.default_history = "ここに自己紹介を入力してください";
            Application.loaded = true;
        </cfscript>
    </cfif>
</cflock>

    <cflock  timeout="20" scope="session" type="exclusive">
        <cfif not isDefined("session.pageType")>
            <cfset session.pageType = 0>
        </cfif>
    </cflock>

<cfset Request.args = StructNew()>

    <cfif isDefined('URL')>
        <cfloop index="listitem" list="#structKeyList(URL)#"><!---キーの抽出をする--->
            <cftry>
            <cfset "Request.args.#listitem#" = trim(evaluate('URL.#listitem#'))><!---スペースの消去--->
            <cfcatch type="any"></cfcatch>
        </cftry>
        </cfloop>

        <cfloop index="listitem" list="#structKeyArray(Form)#">
            <cftry>
                <cfset "Request.args.#listitem#" = trim(evaluate('form.#listitem#'))>
                <cfcatch type="any"></cfcatch>
            </cftry>
        </cfloop>
    </cfif>

   <cfsetting enableCFoutputOnly="no">