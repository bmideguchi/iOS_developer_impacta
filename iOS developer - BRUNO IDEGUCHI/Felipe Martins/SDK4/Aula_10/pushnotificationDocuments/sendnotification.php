<?php
$payload['aps'] = array(
	'alert' => "$_POST[mensagem]", 
	'badge' => 1, 
	'sound' => 'default'
);
$payload = json_encode($payload);
echo "Payload: $payload<br/>";
$token = "DEVICE_TOKEN  colocar o CPF ";

$apnsHost = 'gateway.sandbox.push.apple.com';
$apnsPort = 2195;
$apnsCert = 'certs/apns-dev.pem';

$streamContext = stream_context_create();
stream_context_set_option($streamContext, 'ssl', 'local_cert', $apnsCert);

$apns = stream_socket_client("ssl://$apnsHost" . ":" . "$apnsPort", $error, $errorString, 2, STREAM_CLIENT_CONNECT, $streamContext) or die('Socket Error!');
$apnsMessage = chr(0) . chr(0) . chr(32) . pack('H*', str_replace(' ', '', $token)) . chr(0) . chr(strlen($payload)) . $payload;
if(fwrite($apns, $apnsMessage))	{
	fclose($apns);
	echo "Mensagem enviada!";
}
unset($apns);

?>