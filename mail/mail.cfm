<cfif (form.email is not "") and (form.remail is not "") and (form.subject is not "") and (form.message is not "")>


    <html>
        <head><title>E-mail</title></head>

        <body>

            <cfmail  from="#form.remail#"  subject="#form.subject#"  to="#form.email#" type="html">

                #form.message#
                <br>
                reply to:<a href="mailto:#form.remail#">#form.remail#</a>

            </cfmail>

            メッセージを送信しました

        </body>

    </html>

    <cfelse>
        <cflocation  url="premail.cfm?lack=yes">

</cfif>