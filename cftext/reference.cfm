<h3>配列を引数とする</h3>

<cfscript>

    aOriginal = ArrayNew(1);
    aOriginal[1] = 1;
    aOriginal[2] = 123;

    function doubleOneDArray(hoge) {
        var i = 0;
        for(i=1;i <= arrayLen(hoge); i++){
            arguments.hoge[i] = arguments.hoge[i] *2;
    }

    return hoge;
}
</cfscript>


<cfdump  var="#aOriginal#" label="元の配列">


<cfscript>
    aDoubled = doubleOneDArray(aOriginal);
</cfscript>


<cfdump  var="#aDoubled#" labeL="実行後">
<cfdump  var="#aOriginal#" label="オリジナル">