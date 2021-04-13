<cfset Cname = "testfiles">
<cfset Directory = "C:\ColdFusion2021\cfusion\jetty\multicore">
<!---C:\Inetpub\wwwroot\cftest--->
<cfset Ext = ".html,.txt,.htm">
<cfset Langage = "English">
<cfset urlpath = "http://127.0.0.1/cftest/">

<cfindex
collection="#Cname#"
action="refresh"
type="path"
key="#Directory#"
extensions="#Ext#"
recurse="Yes"
language="#Langage#"
urlpath="#urlpath#">

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