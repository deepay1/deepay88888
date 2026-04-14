const CACHE_NAME = 'deePay-pwa-v1';
const ASSETS_TO_CACHE = [
  '/',
  '/assets/images/logo_icon/favicon.png',
  '/assets/images/logo_icon/logo.png',
  '/assets/images/logo_icon/logo_dark.png',
  '/assets/global/css/bootstrap.min.css',
  '/assets/global/css/all.min.css',
  '/assets/global/css/line-awesome.min.css',
  '/assets/global/css/select2.min.css',
  '/assets/global/js/jquery-3.7.1.min.js',
  '/assets/global/js/bootstrap.bundle.min.js',
  '/assets/global/js/select2.min.js',
  '/assets/global/js/global.js'
];

self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME).then(cache => cache.addAll(ASSETS_TO_CACHE))
  );
});

self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(keys => Promise.all(
      keys.filter(key => key !== CACHE_NAME).map(key => caches.delete(key))
    ))
  );
  self.clients.claim();
});

self.addEventListener('fetch', event => {
  if (event.request.method !== 'GET') return;

  event.respondWith(
    caches.match(event.request).then(cachedResponse => {
      if (cachedResponse) {
        return cachedResponse;
      }

      return fetch(event.request).then(networkResponse => {
        if (!networkResponse || networkResponse.status !== 200 || networkResponse.type !== 'basic') {
          return networkResponse;
        }

        const responseClone = networkResponse.clone();
        caches.open(CACHE_NAME).then(cache => {
          cache.put(event.request, responseClone);
        });

        return networkResponse;
      }).catch(() => {
        return caches.match('/assets/images/logo_icon/logo.png');
      });
    })
  );
});
