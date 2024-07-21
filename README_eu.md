<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Cors Proxy YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/cac-proxy.svg)](https://ci-apps.yunohost.org/ci/apps/cac-proxy/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/cac-proxy.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/cac-proxy.maintain.svg)

[![Instalatu Cors Proxy YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cac-proxy)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Cors Proxy YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript


**Paketatutako bertsioa:** 1.2.1~ynh4

## Pantaila-argazkiak

![Cors Proxy(r)en pantaila-argazkia](./doc/screenshots/fnac-logs.png)

## Dokumentazioa eta baliabideak

- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/gcollin/cookie-aware-cors-proxy>
- YunoHost Denda: <https://apps.yunohost.org/app/cac-proxy>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/cac-proxy_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
edo
sudo yunohost app upgrade cac-proxy -u https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
