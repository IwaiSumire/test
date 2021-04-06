<!---HTMLから送信されると、action="request_send.cfml"タグによってcfで処理するように指示--->
<cfmail to="opz09966@gmail.com" from="#Form.Email_address#"  subject="HPからのご意見">
    HPからのご意見
    Emailアドレス：#Form.Email_address#<!---htmlで入力したemailの値がここにくる--->
    ご意見：#Form.RequestBody#
</cfmail>
