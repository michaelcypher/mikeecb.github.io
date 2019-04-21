<!doctype html>
<html lang="{{ page.lang | default: site.lang | default: "en" }}">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel="canonical" href="{{ site.url }}{{ page.url }}" />
    <link rel="stylesheet" type="text/css" href="{{ "/assets/index.css" | relative_url }}">
    <title>{{ site.title | escape }}</title>
    {% feed_meta %}
  </head>
  <body>
    <div id="main-container">
      {{ content }}
    </div>
  </body>
</html>
