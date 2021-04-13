<cfset Cname = "testfiles">
 
 
<cfcollection action = "create"
  collection = "#Cname#"
  path = "C:\ColdFusion2021\cfusion\jetty\multicore"
  language = "English">

<html>
    <head>インデクシング</head>
</html>

<body>
    <cfoutput>
        <h2>インデックスの更新</h2>
        <table>
            <tr>
                <td>コレクション名</td>
                <td>#Cname#</td>
            </tr>
            <tr>
                <td>ファイルタイプ</td>
                <td>#Ext#</td>
            </tr>
            <tr>
                <td>URLパス</td>
                <td>#urlpath#</td>
            </tr>
        </table>
    </cfoutput>
</body>