<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Cors Proxy untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/cac-proxy.svg)](https://ci-apps.yunohost.org/ci/apps/cac-proxy/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/cac-proxy.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/cac-proxy.maintain.svg)

[![Pasang Cors Proxy dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cac-proxy)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Cors Proxy secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript


**Versi terkirim:** 1.3.2~ynh1

## Tangkapan Layar

![Tangkapan Layar pada Cors Proxy](./doc/screenshots/fnac-logs.png)

## Dokumentasi dan sumber daya

- Depot kode aplikasi hulu: <https://github.com/gcollin/cookie-aware-cors-proxy>
- Gudang YunoHost: <https://apps.yunohost.org/app/cac-proxy>
- Laporkan bug: <https://github.com/YunoHost-Apps/cac-proxy_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
atau
sudo yunohost app upgrade cac-proxy -u https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
