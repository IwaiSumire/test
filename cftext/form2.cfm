<cfprocessingdirective pageencoding="utf-8">

<cfparam  name="Request.args.pageType" default="#session.pageType#" type="numeric">
<cfparam  name="Request.args.myname" default="#application.system.default_name#" type="string">
<cfparam  name="Request.args.myhistory" default="#Application.system.default_history#" type="string">

<cfoutput>
    <html>
        <head>
        
        </head>
        <body>
            <cfif Request.args.pageType>
                <i>作成した紹介文は下記の通りです</i>
                <form name="form" action="form2.cfc?=pageType=0" method="post">
                    名前：#Request.args.myname#<br>
                    自己紹介：<br>
                    #application.udfHTMLEditFormatBR(Request.args.myhistry)#
                    <input type="submit" value="修正">
                    <input type="hidden" name="myname" value="#Request.args.myname#">
                    <input type="hidden" name="myhistory" value="#Request.args.myhistory#">
                </form>

                <cfelse>
                    <i>紹介文を作成します</i>
                    <form name="form" action="form2.cfc?pageType=1" method="post">
                        <table border="0">
                            <tr>
                                <td aligin="left" valign="top">名前</td>
                                <td><input name="myname" type="text" size="20" value="#Request.args.myname#"></td>
                            </tr>
                            <tr>
                                <td colspna="left" valign="top">自己紹介</td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" value="紹介文を作る"></td>
                            </tr>
                        </table>

                    </form>
            </cfif>
        </body>
    </html>
</cfoutput>