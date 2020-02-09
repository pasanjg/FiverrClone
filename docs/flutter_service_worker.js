'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets\AssetManifest.json": "e3ed30d9cf555a2679fc593847344567",
"/assets\assets\images\fiverr_logo.png": "2955471cb4ba9decb1722b85752e0441",
"/assets\FontManifest.json": "b1448b2dfc414e9463b0976526b04622",
"/assets\fonts\MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets\LICENSE": "4c3329c43d79ee1b603e5bc626f3dfb4",
"/assets\packages\cupertino_icons\assets\CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets\packages\flutter_icons\fonts\AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"/assets\packages\flutter_icons\fonts\Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"/assets\packages\flutter_icons\fonts\EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"/assets\packages\flutter_icons\fonts\Feather.ttf": "6beba7e6834963f7f171d3bdd075c915",
"/assets\packages\flutter_icons\fonts\FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"/assets\packages\flutter_icons\fonts\FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"/assets\packages\flutter_icons\fonts\FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"/assets\packages\flutter_icons\fonts\FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"/assets\packages\flutter_icons\fonts\Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"/assets\packages\flutter_icons\fonts\Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"/assets\packages\flutter_icons\fonts\MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"/assets\packages\flutter_icons\fonts\MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"/assets\packages\flutter_icons\fonts\Octicons.ttf": "73b8cff012825060b308d2162f31dbb2",
"/assets\packages\flutter_icons\fonts\SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"/assets\packages\flutter_icons\fonts\weathericons.ttf": "4618f0de2a818e7ad3fe880e0b74d04a",
"/assets\packages\flutter_icons\fonts\Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"/assets\packages\font_awesome_flutter\lib\fonts\fa-brands-400.ttf": "3ca122272cfac33efb09d0717efde2fa",
"/assets\packages\font_awesome_flutter\lib\fonts\fa-regular-400.ttf": "bdd8d75eb9e6832ccd3117e06c51f0d3",
"/assets\packages\font_awesome_flutter\lib\fonts\fa-solid-900.ttf": "d21f791b837673851dd14f7c132ef32e",
"/icons\Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons\Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/index.html": "bc1939682962d181edf78a59d9b4d22f",
"/main.dart.js": "50da14174f7885b8b7ae4f88d950fff8",
"/manifest.json": "6df7a8ca8acb885c86e95dfbc573ab30"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
