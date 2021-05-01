<h3>配列を含んでいる構造体を引数とする</h3>

<cfscript>
    anotherStruct = structNew();
    anotherStruct.firstName="SUMIRE";
    anotherStruct.lastName="IWAI";
    anotherStruct.arrayElement = arrayNew(1);
    anotherStruct.arrayElement[1] = "ADOBE";
    anotherStruct.arrayElement[2] = "COLDFUSION8";

    function loweCase(anotherStruct) {
        anotherStruct.firstName = lCase(anotherStruct.firstName);
        anotherStruct.lastName=lCase(anotherStruct.lastName);
        anotherStruct.arrayElement[1] = lcase(anotherStruct.arrayElement[1]);
        anotherStruct.arrayElement[2]= lCase(anotherStruct.arrayElement[2]);
    }
    
</cfscript>

    <cfdump  var="#anotherStruct#" label="呼び出し前">

    <cfscript>
        loweCase(anotherStruct);
    </cfscript>

    <cfdump  var="#anotherStruct#">
