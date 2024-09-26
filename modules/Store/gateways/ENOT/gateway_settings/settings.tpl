<form action="" method="post">
    <div class="card shadow border-left-primary">
        <div class="card-body">
            <h5><i class="icon fa fa-info-circle"></i>{$GATEWAY_NAME}</h5></br>
            - {$BANK_CARD}</br>
            - {$ONLINE_WALLET}</br>
            - {$CRYPTOCURRENCIES}</br></br>
            - {$GATEWAY_LINK}</br>
            - {$GATEWAY_TESTED}</br>
            - {$ALERT_URL}</br>
            - {$SUCCESS_URL}</br>
            - {$FAILED_URL}
        </div>
    </div>

    <br />


<form action="" method="post"><div class="form-group"><label for="inputENOTuuId">{$SHOP_ID}</label>
<input class="form-control" type="text" id="inputENOTShopuuId" name="shopuuid_key" value="{$SHOP_UUID_VALUE}" placeholder="{$SHOP_ID}">
</div>

<div class="form-group"><label for="inputENOTApiKey">{$SHOP_KEY1}</label>
<input class="form-control" type="text" id="inputENOTApiKey" name="secret1_key" value="{$SHOP_API_KEY_VALUE}" placeholder="{$SHOP_KEY1}">
</div>

<div class="form-group"><label for="inputENOTApiKey2">{$SHOP_KEY2}</label>
<input class="form-control" type="text" id="inputENOTApiKey2" name="secret2_key" value="{$SHOP_API_KEY_2_VALUE}" placeholder="{$SHOP_KEY2}">
</div>

<div class="form-group"><label for="inputENOThook">{$SHOP_URL_HOOK}</label>
<input class="form-control" type="text" id="inputENOThook" name="enot_callb" value="{$ENOT_CALLB}" placeholder="{$SHOP_URL_HOOK}">
</div>

<div class="form-group custom-control custom-switch">
<input id="inputEnabled" name="enable" type="checkbox" class="custom-control-input"{if $ENABLE_VALUE eq 1} checked{/if} />
<label class="custom-control-label" for="inputEnabled">{$ENABLE_GATEWAY}</label>
</div>

<div class="form-group"><input type="hidden" name="token" value="{$TOKEN}"><input type="submit" value="{$SUBMIT}" class="btn btn-primary">
</div>
</form>