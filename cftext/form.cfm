<form action="form-cfc.cfc" method="post">
    <table>
        <tr>
            <td>姓</td>
            <td><input type="text" name="lastName"></td>
        </tr>
        <tr>
            <td>名</td>
            <td><input type="text" name="firstName"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input name="submit" type="submit" value="送信"></td>
        </tr>
    </table>
    <input type="hidden" name="method" value="getName">

</form>