'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "f416e1252b6cd4513d17bd24a5b4b69f",
"assets/AssetManifest.bin.json": "69d5b959bf5674cd75861ff0fc098f40",
"assets/AssetManifest.json": "816543d99fbbc562fbf97cd47dbe9cc5",
"assets/assets/fonts/Roboto-Regular.ttf": "303c6d9e16168364d3bc5b7f766cfff4",
"assets/assets/images/biryani.png": "4a3ab4cec7571ef29f01fc14bcb20c18",
"assets/assets/images/crown.png": "4a43303ba37aa88cf1938713efd4631a",
"assets/assets/images/dart-logo.png": "a675cb93b75d5f1656c920dceecdcb38",
"assets/assets/images/delivery.gif": "42f92e7f0e7093786b10be3791c8e190",
"assets/assets/images/dinner-banner.jpg": "ce90d4a7d3720c7647e8c9073f674b83",
"assets/assets/images/egg-meal.png": "7eb31e51699efd38f39082b63dbba2fa",
"assets/assets/images/feedback.gif": "710680ac743168454e30a19e18a960a0",
"assets/assets/images/female-pp.png": "ae64679203c379894bf70bdd3d79a796",
"assets/assets/images/flutter-icon.png": "7e432d07dc23bc4f2c04fbaac8d8670e",
"assets/assets/images/gpay.png": "4597b5f11a58ae746e51ce07b7bb9678",
"assets/assets/images/gpay.svg": "06d5004e90de6dcbb31c0766edd8b4f7",
"assets/assets/images/img1.jpg": "a85895694ed0f063ab367edaafd8e583",
"assets/assets/images/img2.jpg": "35b75dbfe81cdfd64d3f2e7bdb7b1e9b",
"assets/assets/images/img3.jpg": "294eb147616bb4143ffdd9085627ca48",
"assets/assets/images/img4.jpg": "d7efd59b8586da23ae12f15cc3320140",
"assets/assets/images/location.gif": "8069fd3e8e3a641261e2dc50b59531ba",
"assets/assets/images/lunch-banner.jpeg": "ff2c6b5b8fda908c65e0c9912310a975",
"assets/assets/images/lunch-box.gif": "7e70758f6d89281cba01078eda910e5e",
"assets/assets/images/male-pp.jpg": "ccbf8211e3cfde8be4172886a56b79d1",
"assets/assets/images/non-veg.png": "87e78605a58804a2a1614c4257746ee5",
"assets/assets/images/non-veg.webp": "ed12f9deb555ebbbc1e507a7d4ae60f0",
"assets/assets/images/paytm.webp": "39d857e9a7091037161dfd71351e302e",
"assets/assets/images/phonepe.png": "dd5385fb5b726cb74171930c4db4ca5b",
"assets/assets/images/Screenshot_20250116_135824.png": "4d6b9fd4e5c825e8238debd9ea37975a",
"assets/assets/images/thali-2.png": "5d17c71a27150067ed4510f7a0ea025a",
"assets/assets/images/veg-thali.webp": "72a91255b56bd8d90b95fb4159138604",
"assets/assets/images/veg.png": "b06ba4716313c2779d97f481389470de",
"assets/FontManifest.json": "cb2f69e26d078ed5c262d626fdddc36a",
"assets/fonts/MaterialIcons-Regular.otf": "713d1dbb43fd69d63bf3b2fbed72f271",
"assets/NOTICES": "e55145ca6f142a8e9c49d614ee5ae942",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "636e2af5721d0c61cd5b5774c55c9e7d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "72f7477315388f497a35db6fcdf4a250",
"/": "72f7477315388f497a35db6fcdf4a250",
"main.dart.js": "46f4298ebcda7aa8b6ed08281eeafeb5",
"manifest.json": "280dceb41f64d2eff1b2d5bb21d28a81",
"version.json": "83c3ec99cc9b54a9ef5725a8538438ab"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
