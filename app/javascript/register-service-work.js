window.addEventListener('load', () => {
  if('serviceWorker' in navigator) {
    /*
    *
    * Register the Service Worker
    *
    * */
    navigator.serviceWorker.register('/service-worker.js').then(registration => {
      console.log('ServiceWorker registered: ', registration);

      var serviceWorker;
      if (registration.installing) {
        serviceWorker = registration.installing;
        console.log('Service worker installing.');
      } else if (registration.waiting) {
        serviceWorker = registration.waiting;
        console.log('Service worker installed & waiting.');
      } else if (registration.active) {
        serviceWorker = registration.active;
        console.log('Service worker active.');
      }
    }).catch(registrationError => {
      console.log('Service worker registration failed: ', registrationError);
    });

  } else console.log('Seu navegador não oferece suporte ao Service-Worker!');
});