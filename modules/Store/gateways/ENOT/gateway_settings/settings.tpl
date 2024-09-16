<form action="" method="post">
    <div class="card shadow border-left-primary">
        <div class="card-body">
            <h5><i class="icon fa fa-info-circle"></i> Платежная система <a href="https://cabinet.enot.io/registration" target="_blank">ENOT</a></h5></br>
            - <b>Карты</b>: <b>Оплата картой РФ</b></br>
            - <b>Кошельки</b>: <b>Perfect money</b></br>
            - <b>Криптовалюты</b>: <b>Bitcoin</b>, <b>Ethereum</b>, <b>USDT TRC20</b>, <b>USDT ERC20</b>, <b>Litecoin</b>, <b>TRX</b> и <b>DASH</b></br></br>
            - Для регистрации в ENOT используйте <a href="https://cabinet.enot.io/registration" target="_blank">эту ссылку</a>.</br>
            - Модуль прошел тесты и работает на версиях магазина 1.7.1 - 1.8.0.
        </div>
    </div>

    <br />


<form action="" method="post"><div class="form-group"><label for="inputENOTuuId">UUID магазина</label>
<input class="form-control" type="text" id="inputENOTShopuuId" name="shopuuid_key" value="{$SHOP_UUID_VALUE}" placeholder="UUID магазина">
</div>

<div class="form-group"><label for="inputENOTApiKey">Секретный ключ 1</label>
<input class="form-control" type="text" id="inputENOTApiKey" name="secret1_key" value="{$SHOP_API_KEY_VALUE}" placeholder="Секретный ключ 1">
</div>

<div class="form-group"><label for="inputENOTApiKey2">Секретный ключ 2</label>
<input class="form-control" type="text" id="inputENOTApiKey2" name="secret2_key" value="{$SHOP_API_KEY_2_VALUE}" placeholder="Секретный ключ 2">
</div>

<div class="form-group custom-control custom-switch">
<input id="inputEnabled" name="enable" type="checkbox" class="custom-control-input"{if $ENABLE_VALUE eq 1} checked{/if} />
<label class="custom-control-label" for="inputEnabled">Включить способ оплаты</label>
</div>

<div class="form-group"><input type="hidden" name="token" value="{$TOKEN}"><input type="submit" value="{$SUBMIT}" class="btn btn-primary">
</div>
</form>