<cfset MaxRows = 20>
<cfparam  name="top" default="1"><!---変数の存在を確認し、存在していれば設定する--->
<cfquery datasource="sample" name="toplist">
select *
from suggestion,employee,result
where
suggestion.login_id=employee.login_id
and
suggestion.result_id=result.result_id
and
date_part('month',now())=date_part('month',suggestion.filingdate) 
</cfquery>

<html>
    <head>
        <title>トップページ</title>
        <link rel="stylesheet" href="style/top.css">
    </head>
<body>
<br>

<cfoutput>
<h3>現在のログインユーザー：#cookie.cemployee_name#さん</h3>
</cfoutput>

    <a href="./all_list.cfm">
        <button type="button">過去の全てのリスト</button>
    </a>
    
    <a href="./newImp.cfm">
        <button type="button">新規登録はこちら</button>
    </a>
    
    <a href="./logout.cfm">
        <button type="button">ログアウト</button>
    </a>
    
    <hr style="height:3px; background-color:#ff9999;">


    
    <h2>今月改善提案一覧表<h2>
        
        <table border="3" class="tab">
            <tr>
                <td><b>タイトル</b></td>
                <td><b>提出者</b></td>
                <td><b>提出日</b></td>
                <td><b>申請状況</b></td>
            </tr>
        
                <cfoutput query="toplist" startrow="#top#" MAXROWS="#MaxRows#">

                    <tr>
                        <td>#suggestion_title#</td>
                        <td>#employee_name#</td>
                        <td>#filingdate#</td>
                        <td>#result#</td>
                        <td>
                            
                            <a href="./show.cfm?suggestion_id=#suggestion_id#">
                                <button type="button">詳細</button>
                            </a>
                        </td>
                        <td>
                            <a href="./update.cfm?suggestion_id=#suggestion_id#">
                                <button type="button">変更</button>
                            </a>
                        </td>
                        <td class="delete">
                            
                       <a href="./delete.cfm?suggestion_id=#suggestion_id#" onClick="disp(); return false;">
                                <button type="button" >消去</button>
                            </a>
                        </td>
                    </tr>

                </cfoutput>
            </table>

            <cfset NextStart = top + MaxRows>
            <cfset Return = top - MaxRows>

            <br>
            <cfoutput>
                <form action="top.cfm" method="post">
                    <input type="Hidden" name="return" value="#Return#">
                    <input type="submit" value="前の20件へ">
                </form>
                <form action="top.cfm" method="post">
                    <input type="Hidden" name="top" value="#NextStart#">
                    <input type="submit" value="次の20件へ">
                </form>
            </cfoutput>
        </body>
</html>