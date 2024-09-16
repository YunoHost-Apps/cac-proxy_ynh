<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Cors Proxy voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/cac-proxy.svg)](https://ci-apps.yunohost.org/ci/apps/cac-proxy/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/cac-proxy.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/cac-proxy.maintain.svg)

[![Cors Proxy met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cac-proxy)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Cors Proxy snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript


**Geleverde versie:** 1.3.2~ynh1

## Schermafdrukken

![Schermafdrukken van Cors Proxy](./doc/screenshots/fnac-logs.png)

## Documentatie en bronnen

- Upstream app codedepot: <https://github.com/gcollin/cookie-aware-cors-proxy>
- YunoHost-store: <https://apps.yunohost.org/app/cac-proxy>
- Meld een bug: <https://github.com/YunoHost-Apps/cac-proxy_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
of
sudo yunohost app upgrade cac-proxy -u https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
