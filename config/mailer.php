<?php
/**
 * Created by PhpStorm.
 * User: haezalmusa
 * Date: 22/05/2016
 * Time: 12:32 PM
 */
return [
    'class' => 'yii\swiftmailer\Mailer',
//    'viewPath' => '@config/mail',

    'useFileTransport' => false,
    'transport' => [
        'class' => 'Swift_SmtpTransport',
        'host' => 'smtp.gmail.com',
        'username' => 'acadevent87@gmail.com',
        'password' => 'tepungpelita',
        'port' => 465,
        'encryption' => 'ssl',
    ],
];