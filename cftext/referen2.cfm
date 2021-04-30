<h3>配列を引数とするUDF</h3>

<cfscript>

    aOriginal = ArrayNew(1);
    aOriginal[1] = 1;
    aOriginal[2] = 123;

    function doubleOneDArray(OneDArray) {
        var i = 0;
        for(i=1;i <= arrayLen(OneDArray); i++){
            OneDArray[i] = OneDArray[i] *2;
    }

    return OneDArray;
}
</cfscript>>

<cfdump  var="#aOriginal#" label="UDF呼び出し前配列">

<cfscript>
aDoubled = doubleOneDArray(aOriginal);
</cfscript>

<cfdump  var="#aDoubled#" label="UDFを実行した結果の配列">
<cfdump  var="#aOriginal#" label="UDFを実行した後">