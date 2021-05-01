<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>


<cfscript>
    function myFunction(firstName,lastName) {
        retval = firstName & lastName;
        return retval;
    }
    request.myFunction = Variables.myFunction;
</cfscript>

<cfoutput>
    <h2>
    #request.myFunction("菫","岩井")#
    </h2>

    isCustomFunction(retval);
</cfoutput>

<body>
    
</body>
</html>