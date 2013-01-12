[![Build Status](https://travis-ci.org/stfalcon-studio/ls-plugin_seo.png?branch=master)](https://travis-ci.org/stfalcon-studio/ls-plugin_seo)

ОПИСАНИЕ
--------

Основное предназначение плагина это оптимизация структуры сайта на LiveStreet CMS
для поисковых систем.

ЛИЦЕНЗИИ
-------

Файлы в этом архиве распостраняются по лицензии GNU GPL. Вы можете найти копию
этой лицензии в файле LICENSE.txt.


ИСТОРИЯ ВЕРСИЙ
--------------

v0.3.0
- Плагин совместим с LiveStreet v1.0
- Добавлены BDD тесты и конфиг для Travis CI

v0.2.0
- Добавлена генерация кейвордов и описаний для страниц тегов
- Отключен вывод текста в футере

v0.1.0 (анонс http://livestreet.ru/blog/addons/5928.html)
- Реализована возможность указывать свои правила генерации meta тегов keywords и
description при помощи создания соответсвующих шаблонов. Для переопределения
этих тегов на других страницах необходимо создать шаблон имя которого соответсвует
имени экшена в директории /templates/skin/default/meta/keywords или
/templates/skin/default/meta/description
