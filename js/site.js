(function () {
  const cartKey = 'shopease-cart';
  const accountKey = 'shopease-account';

  function readCart() {
    try {
      return JSON.parse(localStorage.getItem(cartKey) || '[]');
    } catch {
      return [];
    }
  }

  function readAccount() {
    try {
      return JSON.parse(localStorage.getItem(accountKey) || 'null');
    } catch {
      return null;
    }
  }

  function updateCartBadges() {
    const count = readCart().reduce((total, item) => total + (Number(item.qty) || 0), 0);
    document.querySelectorAll('[data-cart-count]').forEach((badge) => {
      badge.textContent = count > 99 ? '99+' : String(count);
      badge.hidden = count === 0;
    });
  }

  function setupNavigation() {
    const navWrap = document.querySelector('.nav-wrap');
    const navLinks = document.querySelector('.nav-links');
    if (!navWrap || !navLinks) return;

    const cartLink = Array.from(navLinks.querySelectorAll('a')).find((link) => /cart/i.test(link.textContent));
    if (cartLink && !cartLink.querySelector('[data-cart-count]')) {
      cartLink.classList.add('cart-nav-link');
      cartLink.insertAdjacentHTML('beforeend', '<span class="cart-count-badge" data-cart-count hidden>0</span>');
    }

    const account = readAccount();
    const authLink = Array.from(navLinks.querySelectorAll('a')).find((link) => /login|profile/i.test(link.textContent));
    if (authLink && account) {
      authLink.href = 'profile.html';
      authLink.innerHTML = '<i class="fa-regular fa-circle-user" aria-hidden="true"></i> Account';
    }

    if (!navWrap.querySelector('.nav-toggle')) {
      const toggle = document.createElement('button');
      toggle.className = 'nav-toggle';
      toggle.type = 'button';
      toggle.setAttribute('aria-expanded', 'false');
      toggle.setAttribute('aria-label', 'Open navigation menu');
      toggle.innerHTML = '<i class="fa-solid fa-bars" aria-hidden="true"></i>';
      navWrap.insertBefore(toggle, navLinks);
      toggle.addEventListener('click', () => {
        const isOpen = navWrap.classList.toggle('menu-open');
        toggle.setAttribute('aria-expanded', String(isOpen));
        toggle.setAttribute('aria-label', isOpen ? 'Close navigation menu' : 'Open navigation menu');
        toggle.innerHTML = isOpen
          ? '<i class="fa-solid fa-xmark" aria-hidden="true"></i>'
          : '<i class="fa-solid fa-bars" aria-hidden="true"></i>';
      });
    }

    const currentPage = window.location.pathname.split('/').pop() || 'index.html';
    navLinks.querySelectorAll('a').forEach((link) => {
      const linkPage = link.getAttribute('href')?.split('?')[0];
      link.classList.toggle('active', linkPage === currentPage);
    });
  }

  function setupLogout() {
    document.querySelectorAll('[data-logout]').forEach((button) => {
      button.addEventListener('click', () => {
        localStorage.removeItem(accountKey);
        localStorage.removeItem('shopease-profile');
        window.location.href = 'index.html';
      });
    });
  }

  function setupContactForm() {
    const form = document.getElementById('contact-form');
    const status = document.getElementById('contact-status');
    if (!form || !status) return;

    form.addEventListener('submit', (event) => {
      event.preventDefault();
      status.textContent = 'Thanks for reaching out. Our team will get back to you shortly.';
      status.className = 'contact-status success';
      form.reset();
    });
  }

  setupNavigation();
  setupLogout();
  setupContactForm();
  updateCartBadges();
  window.addEventListener('storage', updateCartBadges);
  window.addEventListener('pageshow', updateCartBadges);
})();