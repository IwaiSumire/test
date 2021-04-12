<cfset findshed = "no">
<cfif isDefined("Form.action")><!---最初の時点ではform送信していないのでelseになる--->
    <cfswitch expression="#Form.action#"><!---送られてきた内容を検証--->
    <cfcase value="画像送信"><!---formの内容が画像送信だったら--->
        <cftry>
            <cfif form.image IS NOT ""><!---imageがあれば--->
                <cffile  action="upload"
                FILEFIELD="image"
                DESTINATION="c:\pic\"
                NAMECONFLICT="overwrite">
                <!---NAMECONFLICT 同じ名前があるときの対処方⇒上書きする--->
            </cfif>
            <cfset image = Listappend("#File.ClientFilename#", "#File.ClientFileExt#",".")>
            <!---File.ClientFilename ファイル名--->
            <!---File.ClientFileExt 拡張子--->
            <cfquery datasource="sample">
            insert into uploadfiles(message,image)
            values('#form.message#','#image#')
            </cfquery>
        <cfcatch type="any"><!---例外をcatch--->
            画像をアップロードしている最中、DBへの書き込みの際にerrorが発生しました。
        </cfcatch>
        </cftry>

        <cfset findshed="yes"><!---noだったやつをyesに書き換えする--->
    </cfcase>

    <cfcase value="終了"><!---終了ボタンを押したとき--->
        <cflocation  url="uploaded.cfm" addtoken="No">
    </cfcase>

    </cfswitch>
</cfif>

<!---最初はここから始まる--->
<html>
    <body text="#00000"><!---色の指定--->

        <cfif findshed EQ "no"><!---最初はno--->

            <h1>画像のアップロード<h1>
                <form action="upload.cfm" method="post"
                name="myForm"
                ENCTYPE="multipart/form-data">
                <!---エンコードタイプ ↑はファイルを送信するときに使う--->
                <cfdump var="#form#">

                <font size="2">
                    画像ファイル
                </font><br>

                <input size="55" type="file" name="image"><br><br>

                <font size="2">
                    メッセージ
                </font><br>
                <textarea cols="35" rows="5" name="message"></textarea>
                <input type="submit" name="action" value="画像送信">
            </form>

        <cfelse>

            <!---これはfindshedがyesの時。つまり1回imageを送信した後--->
        <form action="upload.cfm" method="post">
            <input type="submit" name="action" value="終了">
            <input type="submit" name ="action" value="更に画像送信">
        </form>

    </cfif>

    </body>
</html>