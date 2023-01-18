Cookie Aware Cors Proxy is an http proxy letting the browser itself manages cookies and redirects.
Most other cores proxy directly respond to redirects, and doesn't send cookies, thus breaking the flow.

With Cookie Aware Cors Proxy, you can call a website not supporting CORS from your own web application, and get the html result.

### Features
- Translates cookies and redirect locations from the target website to have the browser continue to call the proxy and not directly the website 
- Extensive and dynamic support for log and debug information
- Two engines: a lightweight and one based on chrome to support websites running javascript
