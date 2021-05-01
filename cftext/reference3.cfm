<h3>構造体を引数とするUDF</h3>

<cfscript>
function upperCase(arg) {
    for(key in arg) {
        arg[key] = Ucase(arg[key]);<!---Ucase大文字にして変換--->
    }
    return 0;
}
</cfscript>

<cfscript>
    myStruct = structNew();
    myStruct.firstName = "suire";
    myStruct.lastName="iwai";
</cfscript>

<cfdump  var="#myStruct#" label="関数の呼び出し前">

<cfscript>
    upperCase(myStruct);
</cfscript>

<cfdump  var="#myStruct#" label="呼び出し後">