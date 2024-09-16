<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Cors Proxy para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/cac-proxy.svg)](https://ci-apps.yunohost.org/ci/apps/cac-proxy/) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/cac-proxy.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/cac-proxy.maintain.svg)

[![Instalar Cors Proxy con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cac-proxy)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Cors Proxy de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript


**Versión proporcionada:** 1.3.2~ynh1

## Capturas de pantalla

![Captura de pantalla de Cors Proxy](./doc/screenshots/fnac-logs.png)

## Documentación e recursos

- Repositorio de orixe do código: <https://github.com/gcollin/cookie-aware-cors-proxy>
- Tenda YunoHost: <https://apps.yunohost.org/app/cac-proxy>
- Informar dun problema: <https://github.com/YunoHost-Apps/cac-proxy_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
ou
sudo yunohost app upgrade cac-proxy -u https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
