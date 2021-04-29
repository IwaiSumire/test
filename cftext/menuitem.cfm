<!---サブタグ内で呼び出して、ベースタグに保存する--->


<cfassociate  basetag="cf_menu"><!---cf_namuのサブタグを呼び出す--->
<cfparam  name="namuName" default="">
<cfparam  name="link" default="">

<cfset data = getBaseTagData("cf_menu")><!---祖先タグを検索し、データにアクセスする--->
<cfif data.attributes.debug>
    <cfdump  var="data" label="menuitem(#attributes.itemName#)">
</cfif>
