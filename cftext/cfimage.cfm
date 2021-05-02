<cfimage
action="resize"
source="../Improvementproposal/img/img.jpg"
height="25%"
width="25%"
name="myimage"
>

<cfimage
action="border"
source="#myimage#"
color="000000"
destination="../Improvementproposal/img/imgNew.jpg"
overwrite="yes"
thickness="2">
