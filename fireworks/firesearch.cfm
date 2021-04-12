<cfquery datasource="sample" name="fire">
    select name,prefecture,local,month,day
    from fireworks
    where id = id

<cfif prefecture is not "">
    and prefecture like '%#prefecture#%'
</cfif>

<cfif month is not "">
    and month like '%#month#%'
</cfif>

</cfquery>

<html>
    <head>
        <title>花火大会のスケジュール</title>
    </head>
    <body>
        <center>
        <h1>花火大会のスケジュール</h1>

        <cfif #queryRecordCount(fire)# EQ 0>

            まだ登録がありません。

        <cfelse>

        <cfoutput>
            検索結果：#queryRecordCount(fire)#件見つかりました
        </cfoutput>

        <br>
        <br>

        <table border="2">
            <tr>
                <th>花火大会名</th>
                <th>都道府県</th>
                <th>月</th>
                <th>日</th>
            </tr>
            <cfoutput query="fire">
            <tr>
                <td>#name#</td>
                <td>#prefecture#</td>
                <td>#month#</td>
                <td>#day#</td>
            </tr>
        </cfoutput>
        </table>

    </cfif>
</center>
    </body>
</html>