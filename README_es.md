<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Cors Proxy para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/cac-proxy.svg)](https://dash.yunohost.org/appci/app/cac-proxy) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/cac-proxy.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/cac-proxy.maintain.svg)

[![Instalar Cors Proxy con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cac-proxy)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarCors Proxy rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript


**Versión actual:** 1.2.1~ynh2

## Capturas

![Captura de Cors Proxy](./doc/screenshots/fnac-logs.png)

## Documentaciones y recursos

- Repositorio del código fuente oficial de la aplicación : <https://github.com/gcollin/cookie-aware-cors-proxy>
- Catálogo YunoHost: <https://apps.yunohost.org/app/cac-proxy>
- Reportar un error: <https://github.com/YunoHost-Apps/cac-proxy_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
o
sudo yunohost app upgrade cac-proxy -u https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
