<h3>配列を引数とする</h3>

<cfscript>
    aOriginal = ArrayNew(1);
    aOriginal[1] = 1;
    aOriginal[2] = 123;

    function doubledOneDArray(OneDArray) {

        var i = 0;
        for(i =1;i <= arrayLen(OneDArray);i++) {
            OneDArray[i] = OneDArray[i] *2;
        }

        return arguments.OneDArray;<!---arguments引数--->

    }
</cfscript>


<cfscript>
    aDoubled = doubledOneDArray(aOriginal);
</cfscript>


<cfdump  var="#aDoubled#" labeL="実行後">
<cfdump  var="#aOriginal#" label="オリジナル">