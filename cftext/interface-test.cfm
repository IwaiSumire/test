<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <cfscript>
        arguments= StructNew();
        arguments.first = "100";
        arguments.second= "3";
    </cfscript>
    
    <cfobject  name="iMathObj" component="interface-math">
    
    <cfoutput>
        <h3>arguments</h3>
        #arguments.first#
        #arguments.second#
    
        <h3>tasizan</h3>
        #iMathObj.add(argumentCollection = arguments)#

        <h3>hikizan</h3>
        #iMathObj.subtract(argumentCollection = arguments)#

        <h3>kakezan</h3>
        #iMathObj.multiply(argumentCollection = arguments)#

        <h3>warizan</h3>
        #iMathObj.divide(argumentCollection = arguments)#
    </cfoutput>
    
</body>
</html>

