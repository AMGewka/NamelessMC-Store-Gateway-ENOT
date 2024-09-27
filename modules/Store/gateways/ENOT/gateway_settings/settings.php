<?php

/*
 *  Made by AMGewka
 *  https://github.com/AMGewka
 *
 *  License: MIT
 *
 *  Store module
 */
require_once(ROOT_PATH . '/modules/Store/classes/StoreConfig.php');
$enot_language = new Language(ROOT_PATH . '/modules/Store/gateways/ENOT/language', LANGUAGE);

$smarty->assign([
    'SHOP_ID' => $enot_language->get('shopid'),
    'SHOP_KEY1' => $enot_language->get('key1'),
    'SHOP_KEY2' => $enot_language->get('key2'),
    'SHOP_URL_HOOK' => $enot_language->get('shophookurl'),
    'ENABLE_GATEWAY' => $enot_language->get('enablegateway'),
    'GATEWAY_NAME' => $enot_language->get('gatewayname'),
    'BANK_CARD' => $enot_language->get('bankcard'),
    'ONLINE_WALLET' => $enot_language->get('onlinewal'),
    'CRYPTOCURRENCIES' => $enot_language->get('crypto'),
    'GATEWAY_LINK' => $enot_language->get('gatewaylink'),
    'GATEWAY_TESTED' => $enot_language->get('gatewaytest'),
    'ALERT_URL' => $enot_language->get('alerturl'),
    'SUCCESS_URL' => $enot_language->get('sucurl'),
    'FAILED_URL' => $enot_language->get('failurl'),
    'ENOT_URL' => $enot_language->get('enotapiurl')
]);
if (Input::exists()) {
    if (Token::check()) {
        if (isset($_POST['shopuuid_key']) && isset($_POST['secret1_key']) && isset($_POST['secret2_key']) && isset($_POST['enot_callb']) && isset($_POST['enot_apiurl']) && strlen($_POST['shopuuid_key']) && strlen($_POST['secret1_key']) && strlen($_POST['secret2_key']) && strlen($_POST['enot_callb']) && strlen($_POST['enot_apiurl'])) {
            StoreConfig::set('ENOT.shopuuid_key', $_POST['shopuuid_key']);
            StoreConfig::set('ENOT.secret1_key', $_POST['secret1_key']);
            StoreConfig::set('ENOT.secret2_key', $_POST['secret2_key']);
            StoreConfig::set('ENOT.enot_callb', $_POST['enot_callb']);
            StoreConfig::set('ENOT.enot_apiurl', $_POST['enot_apiurl']);
        }

        //  Is this gateway enabled
        if (isset($_POST['enable']) && $_POST['enable'] == 'on') $enabled = 1;
        else $enabled = 0;

        DB::getInstance()->update('store_gateways', $gateway->getId(), [
            'enabled' => $enabled
        ]);

        Session::flash('gateways_success', $language->get('admin', 'successfully_updated'));
    } else
        $errors = [$language->get('general', 'invalid_token')];
}

$smarty->assign([
    'SETTINGS_TEMPLATE' => ROOT_PATH . '/modules/Store/gateways/ENOT/gateway_settings/settings.tpl',
    'ENABLE_VALUE' => ((isset($enabled)) ? $enabled : $gateway->isEnabled()),
    'SHOP_UUID_VALUE' => ((isset($_POST['shopuuid_key']) && $_POST['shopuuid_key']) ? Output::getClean(Input::get('shopuuid_key')) : StoreConfig::get('ENOT.shopuuid_key')),
    'SHOP_API_KEY_VALUE' => ((isset($_POST['secret1_key']) && $_POST['secret1_key']) ? Output::getClean(Input::get('secret1_key')) : StoreConfig::get('ENOT.secret1_key')),
    'SHOP_API_KEY_2_VALUE' => ((isset($_POST['secret2_key']) && $_POST['secret2_key']) ? Output::getClean(Input::get('secret2_key')) : StoreConfig::get('ENOT.secret2_key')),
    'ENOT_CALLB' => ((isset($_POST['enot_callb']) && $_POST['enot_callb']) ? Output::getClean(Input::get('enot_callb')) : StoreConfig::get('ENOT.enot_callb')),
    'ENOT_URLAPI' => ((isset($_POST['enot_apiurl']) && $_POST['enot_apiurl']) ? Output::getClean(Input::get('enot_apiurl')) : StoreConfig::get('ENOT.enot_apiurl'))
]);