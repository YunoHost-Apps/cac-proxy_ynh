<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Cors Proxy для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/cac-proxy.svg)](https://ci-apps.yunohost.org/ci/apps/cac-proxy/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/cac-proxy.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/cac-proxy.maintain.svg)

[![Установите Cors Proxy с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=cac-proxy)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Cors Proxy быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript


**Поставляемая версия:** 1.2.1~ynh5

## Снимки экрана

![Снимок экрана Cors Proxy](./doc/screenshots/fnac-logs.png)

## Документация и ресурсы

- Репозиторий кода главной ветки приложения: <https://github.com/gcollin/cookie-aware-cors-proxy>
- Магазин YunoHost: <https://apps.yunohost.org/app/cac-proxy>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/cac-proxy_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
или
sudo yunohost app upgrade cac-proxy -u https://github.com/YunoHost-Apps/cac-proxy_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
