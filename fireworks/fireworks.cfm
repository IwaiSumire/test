<html>
    <head>
        <title>花火のスケジュール</title>
    </head>
<body>
    <h1>花火大会のスケジュール</h1>
    <h3>場所と日程の検索<h3>
        
        <cfform action="firesearch.cfm">
            <p>
                探したい都道府県：
                <input type="text" name="prefecture" size="20" maxlength="20">
            <p>
                探したい月：
                <input tyep="text" name="month" size="20" maxlength="10">

                <br>
                <p>
                    <input type="submit" value="検索">
        </cfform>

</body>

</html>