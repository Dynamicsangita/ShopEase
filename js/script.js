const navbar = document.querySelector('.navbar');
const toast = document.getElementById('toast');
const products = document.querySelectorAll('.product-card');
const searchForm = document.getElementById('search-form');
const searchInput = document.getElementById('search');
const searchButton = document.querySelector('.search-btn');
const cartKey = 'shopease-cart';
const wishlistKey = 'shopease-wishlist';

function getCart() {
  try {
    return JSON.parse(localStorage.getItem(cartKey) || '[]');
  } catch {
    return [];
  }
}

function saveCart(cart) {
  localStorage.setItem(cartKey, JSON.stringify(cart));
}

function getWishlist() {
  try {
    return JSON.parse(localStorage.getItem(wishlistKey) || '[]');
  } catch {
    return [];
  }
}

function saveWishlist(wishlist) {
  localStorage.setItem(wishlistKey, JSON.stringify(wishlist));
}

function toggleWishlist(product) {
  const wishlist = getWishlist();
  const existing = wishlist.find((item) => item.name === product.name);
  if (existing) {
    saveWishlist(wishlist.filter((item) => item.name !== product.name));
    showToast(`${product.name} removed from wishlist`);
    return false;
  }
  wishlist.push(product);
  saveWishlist(wishlist);
  showToast(`${product.name} saved to wishlist`);
  return true;
}

function addToCart(name) {
  const cart = getCart();
  const existing = cart.find((item) => item.name === name);
  if (existing) {
    existing.qty += 1;
  } else {
    cart.push({ name, qty: 1 });
  }
  saveCart(cart);
  showToast(`${name} added to cart`);
}

function showToast(message) {
  if (!toast) return;
  toast.textContent = message;
  toast.classList.add('show');
  clearTimeout(showToast.timeout);
  showToast.timeout = setTimeout(() => toast.classList.remove('show'), 1800);
}

function wireProductButtons() {
  document.querySelectorAll('.product-card button, .product .cart, .product .buy, .detail-actions button, .detail-actions .buy-now').forEach((button) => {
    if (button.dataset.cartWired === 'true') return;
    button.dataset.cartWired = 'true';
    button.addEventListener('click', function (event) {
      event.stopPropagation();
      const productCard = this.closest('.product-card, .product');
      const name = this.getAttribute('data-name') || productCard?.querySelector('h3')?.textContent.trim() || 'This item';
      const action = (this.textContent || '').trim().toLowerCase();
      if (action === 'buy now') {
        addToCart(name);
        window.location.href = 'checkout.html';
        return;
      }
      addToCart(name);
    });
  });
}

wireProductButtons();

document.querySelectorAll('.feature-card[href]').forEach((card) => {
  card.addEventListener('click', (event) => {
    event.preventDefault();
    window.location.href = card.getAttribute('href');
  });
});

function appendExtraProducts() {
  const isProductsPage = window.location.pathname.toLowerCase().includes('products.html') || window.location.pathname.toLowerCase().includes('products.jsp');
  const grid = document.querySelector('.product-grid');
  if (!isProductsPage || !grid) return;

  const existingNames = Array.from(grid.querySelectorAll('.product-card h3')).map((title) => title.textContent.trim().toLowerCase());
  const extraProducts = [
    {
      name: 'Airbuds Pro',
      price: '₹2,499',
      oldPrice: '₹2,999',
      discount: '17% OFF',
      image: 'images/earbuds.png',
      keywords: 'earbuds wireless audio accessory',
      group: 'accessory',
      rating: '★★★★★'
    },
    {
      name: 'Gaming Headset',
      price: '₹3,999',
      oldPrice: '₹4,799',
      discount: '17% OFF',
      image: 'images/headphone.png',
      keywords: 'gaming headset audio accessory',
      group: 'accessory',
      rating: '★★★★★'
    },
    {
      name: 'Luxury Perfume',
      price: '₹2,999',
      oldPrice: '₹3,499',
      discount: '14% OFF',
      image: 'images/perfume.png',
      keywords: 'fragrance perfume beauty gift',
      group: 'general',
      rating: '★★★★★'
    },
    {
    name: 'Sandal',
    price: '₹799',
    oldPrice: '₹1,099',
    discount: '27% OFF',
    image: 'images/shoes.png',
    keywords: 'sandals footwear',
    group: 'general',
    rating: '★★★★☆'
  },
  {
    name: 'Smart Watch',
    price: '₹4,999',
    oldPrice: '₹5,999',
    discount: '17% OFF',
    image: 'images/smartwatch.jpeg',
    keywords: 'smart watch wearable',
    group: 'general',
    rating: '★★★★★'
  },
  {
    name: 'Mobile Phone',
    price: '₹14,999',
    oldPrice: '₹16,999',
    discount: '12% OFF',
    image: 'images/phone.jpg',
    keywords: 'mobile smartphone android',
    group: 'mobile-model',
    rating: '★★★★★'
  },
  {
  name: 'Fashion Wear',
  price: '₹1,499',
  oldPrice: '₹1,999',
  discount: '25% OFF',
  image: 'images/fashion.png',
  keywords: 'fashion clothing wear',
  group: 'general',
  rating: '★★★★☆'
},
  {
    name: 'Women Oversize',
    price: '₹999',
    oldPrice: '₹1,499',
    discount: '33% OFF',
    image: 'images/shirt.jpg',
    keywords: 'shirt clothing fashion',
    group: 'general',
    rating: '★★★★☆'
  },
  {
  name: 'Lenovo Laptop',
  price: '₹54,999',
  oldPrice: '₹59,999',
  discount: '8% OFF',
  image: 'images/laptop2.png',
  keywords: 'laptop gaming office computer',
  group: 'general',
  rating: '★★★★★'
},
{
  name: 'HP Laptop',
  price: '₹64,999',
  oldPrice: '₹72,999',
  discount: '11% OFF',
  image: 'images/laptop3.png',
  keywords: 'laptop performance coding computer',
  group: 'general',
  rating: '★★★★★'
},
{
  name: 'Assus Laptop',
  price: '₹74,999',
  oldPrice: '₹84,999',
  discount: '12% OFF',
  image: 'images/laptop4.png',
  keywords: 'laptop premium business computer',
  group: 'general',
  rating: '★★★★★'
},
  {
  name: 'Mobile Phone',
  price: '₹14,999',
  oldPrice: '₹16,999',
  discount: '12% OFF',
  image: 'images/mobile.png',
  keywords: 'mobile smartphone android',
  group: 'mobile-model',
  rating: '★★★★★'
},
  {
  name: 'Bluetooth Headphone',
  price: '₹2,499',
  oldPrice: '₹3,499',
  discount: '29% OFF',
  image: 'images/headphone.jpg',
  keywords: 'headphone music audio',
  group: 'accessory',
  rating: '★★★★★'
},
  {
  name: 'Gaming Laptop',
  price: '₹59,999',
  oldPrice: '₹69,999',
  discount: '14% OFF',
  image: 'images/laptop.png',
  keywords: 'laptop gaming computer',
  group: 'general',
  rating: '★★★★★'
},
  {
  name: 'iPhone 15',
  price: '₹79,999',
  oldPrice: '₹84,999',
  discount: '6% OFF',
  image: 'images/iphone.jpg',
  keywords: 'iphone apple mobile',
  group: 'mobile-model',
  rating: '★★★★★'
},
    {
      name: 'Running Sneakers',
      price: '₹5,499',
      oldPrice: '₹6,299',
      discount: '13% OFF',
      image: 'images/sneakerss.png',
      keywords: 'shoes sneakers fashion sporty',
      group: 'general',
      rating: '★★★★★'
    },
    {
  name: 'Luxury Perfume 2',
  price: '₹3,499',
  oldPrice: '₹4,299',
  discount: '19% OFF',
  image: 'images/perfume2.png',
  keywords: 'perfume fragrance beauty luxury',
  group: 'general',
  rating: '★★★★★'
},
{
  name: 'Classic Sandals',
  price: '₹1,699',
  oldPrice: '₹2,399',
  discount: '29% OFF',
  image: 'images/shoes.png',
  keywords: 'classic sandals slippers footwear',
  group: 'fashion',
  rating: '★★★★★'
},
{
  name: 'Women Sneakers',
  price: '₹1,299',
  oldPrice: '₹1,999',
  discount: '35% OFF',
  image: 'images/shoe.jpg',
  keywords: 'women sandals footwear fashion',
  group: 'fashion',
  rating: '★★★★★'
},
{
  name: 'Premium Casual Shoes',
  price: '₹2,799',
  oldPrice: '₹3,999',
  discount: '30% OFF',
  image: 'images/shoeee.png',
  keywords: 'casual shoes footwear sneakers',
  group: 'fashion',
  rating: '★★★★★'
},
{
  name: 'Luxury Wrist Watch',
  price: '₹3,999',
  oldPrice: '₹5,499',
  discount: '27% OFF',
  image: 'images/watch.png',
  keywords: 'watch wrist watch luxury watch accessories',
  group: 'accessory',
  rating: '★★★★★'
},
{
  name: 'Women Sandal',
  price: '₹999',
  oldPrice: '₹1,499',
  discount: '33% OFF',
  image: 'images/sandell.png',
  keywords: 'sandal footwear fashion women',
  group: 'general',
  rating: '★★★★☆'
},
    {
  name: 'Samsung Galaxy',
  price: '₹24,999',
  oldPrice: '₹27,999',
  discount: '11% OFF',
  image: 'images/mobile2.png',
  keywords: 'samsung galaxy mobile smartphone',
  group: 'mobile-model',
  rating: '★★★★★'
},
{
  name: 'OnePlus Nord',
  price: '₹29,999',
  oldPrice: '₹32,999',
  discount: '9% OFF',
  image: 'images/mobile3.png',
  keywords: 'oneplus nord mobile smartphone',
  group: 'mobile-model',
  rating: '★★★★★'
},
{
  name: 'Xiaomi Redmi',
  price: '₹18,999',
  oldPrice: '₹21,999',
  discount: '14% OFF',
  image: 'images/mobile4.png',
  keywords: 'xiaomi redmi mobile smartphone',
  group: 'mobile-model',
  rating: '★★★★☆'
}
  ];

  extraProducts.forEach((product) => {
    if (existingNames.includes(product.name.toLowerCase())) return;

    const card = document.createElement('article');
    card.className = 'product-card';
    card.dataset.name = product.name;
    card.dataset.link = 'product-details.html';
    card.setAttribute('data-keywords', product.keywords);
    card.setAttribute('data-search-group', product.group);
    card.innerHTML = `
      <img src="${product.image}" alt="${product.name}">
      <div class="product-body">
        <h3>${product.name}</h3>
        <p>${product.price}</p>
        <div class="product-actions">
          <button class="add-cart" data-name="${product.name}">Add to cart</button>
          <a class="link-btn" href="product-details.html">Details</a>
          <button class="buy-now" data-name="${product.name}">Buy now</button>
        </div>
      </div>
    `;
    grid.appendChild(card);
  });

  wireProductButtons();
}

appendExtraProducts();

function normalizeProductActions() {
  document.querySelectorAll('.product-card').forEach((card) => {
    const actions = card.querySelector('.product-actions');
    if (!actions) return;

    const addButton = actions.querySelector('button:not(.buy-now)');
    if (addButton) addButton.classList.add('add-cart');

    if (!actions.querySelector('.buy-now')) {
      const buyButton = document.createElement('button');
      buyButton.className = 'buy-now';
      buyButton.dataset.name = card.dataset.name || card.querySelector('h3')?.textContent.trim() || 'This item';
      buyButton.textContent = 'Buy now';
      actions.appendChild(buyButton);
    }

    if (!card.querySelector('.wishlist-toggle')) {
      const wishlistButton = document.createElement('button');
      wishlistButton.className = 'wishlist-toggle';
      wishlistButton.type = 'button';
      wishlistButton.setAttribute('aria-label', 'Save to wishlist');
      wishlistButton.innerHTML = '<i class="fa-regular fa-heart"></i>';
      card.appendChild(wishlistButton);
    }
  });
}

normalizeProductActions();
wireProductButtons();

function wireWishlistButtons() {
  document.querySelectorAll('.wishlist-toggle').forEach((button) => {
    if (button.dataset.wishlistWired === 'true') return;
    button.dataset.wishlistWired = 'true';
    const card = button.closest('.product-card');
    const product = getCardProduct(card);
    product.url = productDetailsUrl(product);
    const saved = getWishlist().some((item) => item.name === product.name);
    button.classList.toggle('saved', saved);
    button.innerHTML = saved ? '<i class="fa-solid fa-heart"></i>' : '<i class="fa-regular fa-heart"></i>';
    button.addEventListener('click', (event) => {
      event.stopPropagation();
      const product = getCardProduct(card);
      product.url = productDetailsUrl(product);
      const isSaved = toggleWishlist(product);
      button.classList.toggle('saved', isSaved);
      button.innerHTML = isSaved ? '<i class="fa-solid fa-heart"></i>' : '<i class="fa-regular fa-heart"></i>';
    });
  });
}

wireWishlistButtons();

const productDetails = {
  'iphone 16 pro': {
    description: 'A premium smartphone designed for power, photography, and everyday speed. Experience pro-grade cameras, smooth performance, and a sleek titanium finish.',
    highlights: ['Triple-lens pro camera system', 'Dynamic Island display', 'Ultra-fast A18 Pro chip', 'All-day battery performance'],
    specifications: ['6.3-inch Super Retina XDR', '256GB storage', 'Face ID + USB-C', '5G connectivity']
  },
  'samsung galaxy a35': {
    description: 'A stylish 5G smartphone with a bright display, dependable camera system, and battery life built for busy everyday use.',
    highlights: ['Super AMOLED display', '50MP multi-camera setup', '5G connectivity', 'Long-lasting battery'],
    specifications: ['6.6-inch display', '128GB storage', '8GB RAM', 'Android 14']
  },
  'oneplus nord': {
    description: 'A fast and fluid smartphone with smooth performance, a vivid display, and a camera ready for everyday moments.',
    highlights: ['High refresh-rate display', 'Fast charging support', 'Dual camera system', 'Reliable all-day battery'],
    specifications: ['6.7-inch AMOLED display', '256GB storage', '5G connectivity', 'Android platform']
  },
  'xiaomi redmi': {
    description: 'A value-packed smartphone offering a crisp display, capable cameras, and dependable performance at an accessible price.',
    highlights: ['Sharp full-screen display', 'High-resolution main camera', 'Large battery', 'Fast everyday performance'],
    specifications: ['6.7-inch display', '128GB storage', 'Dual SIM support', 'USB-C charging']
  },
  'gaming headset': {
    description: 'An immersive gaming headset with clear sound, a comfortable fit, and a microphone ready for every team session.',
    highlights: ['Surround-style gaming audio', 'Noise-reducing microphone', 'Comfort ear cushions', 'Multi-device compatibility'],
    specifications: ['Over-ear design', 'Wired connection', 'Inline controls', 'Adjustable headband']
  },
  'airbuds pro': {
    description: 'Compact wireless earbuds with rich sound, a secure fit, and a pocket-friendly charging case for life on the move.',
    highlights: ['Wireless listening', 'Clear call microphones', 'Portable charging case', 'Comfortable in-ear fit'],
    specifications: ['Bluetooth connection', 'Touch controls', 'Compact case', 'All-day case battery']
  },
  'luxury perfume': {
    description: 'A refined fragrance with a memorable finish, presented as an elegant everyday scent and a thoughtful gift.',
    highlights: ['Long-lasting fragrance', 'Elegant premium bottle', 'Balanced signature notes', 'Gift-ready presentation'],
    specifications: ['Eau de parfum', '100ml bottle', 'Unisex fragrance', 'For day and evening wear']
  },
  'mirrorless camera': {
    description: 'A versatile mirrorless camera for sharp travel, portrait, and everyday photography with precise creative control.',
    highlights: ['High-resolution image capture', 'Fast autofocus', 'Interchangeable lens support', '4K video recording'],
    specifications: ['Electronic viewfinder', 'Wi-Fi connectivity', 'Rechargeable battery', 'Compact camera body']
  },
  'running sneakers': {
    description: 'Lightweight running sneakers with cushioned support and a flexible sole for comfortable movement throughout the day.',
    highlights: ['Cushioned footbed', 'Breathable upper', 'Flexible rubber sole', 'Everyday sporty styling'],
    specifications: ['Unisex design', 'Lace-up closure', 'Lightweight construction', 'Rubber outsole']
  },
  'smart watch pro': {
    description: 'A modern smartwatch that keeps your daily activity, notifications, and essentials close at a glance.',
    highlights: ['Activity tracking', 'Bright touch display', 'Call and message alerts', 'Health-focused features'],
    specifications: ['Touchscreen display', 'Bluetooth pairing', 'Fitness tracking', 'Magnetic charging']
  },
  'casual fashion wear': {
    description: 'An easy everyday fashion pick with a comfortable fit and versatile styling for relaxed plans and weekends.',
    highlights: ['Soft comfortable fabric', 'Relaxed everyday fit', 'Easy to style', 'Season-ready design'],
    specifications: ['Casual silhouette', 'Machine washable', 'Lightweight fabric', 'Multiple sizes']
  },
  'premium laptop': {
    description: 'A dependable laptop for work, study, creativity, and entertainment with a clean design and smooth multitasking.',
    highlights: ['Fast multitasking performance', 'Sharp display', 'Comfortable keyboard', 'Portable premium design'],
    specifications: ['Full HD display', 'Solid-state storage', 'Wi-Fi connectivity', 'Windows-ready hardware']
  }
};

function getCardProduct(card) {
  const image = card.querySelector('img')?.getAttribute('src') || 'images/iphone.jpg';
  const name = card.getAttribute('data-name') || card.querySelector('h3')?.textContent.trim() || 'ShopEase product';
  const price = card.querySelector('.product-body p, .price')?.textContent.trim().split(' ')[0] || '₹2,999';
  return { name, image, price };
}

function productDetailsUrl(product) {
  const params = new URLSearchParams(product);
  return `product-details.html?${params.toString()}`;
}

function wireProductDetailLinks() {
  getProductCards().forEach((card) => {
    const product = getCardProduct(card);
    const url = productDetailsUrl(product);
    card.setAttribute('data-link', url);
    card.querySelectorAll('a[href="product-details.html"]').forEach((link) => {
      link.href = url;
    });
  });

  document.querySelectorAll('.spotlight-card[data-product-name]').forEach((card) => {
    const product = {
      name: card.dataset.productName,
      image: card.dataset.productImage,
      price: card.dataset.productPrice
    };
    card.href = productDetailsUrl(product);
  });
}

function getProductGallery(name, fallbackImage) {
  const normalized = (name || '').toLowerCase();
  const galleryMap = {
    'iphone 16 pro': ['images/iphone.jpg', 'images/mobile.png', 'images/mobile2.png', 'images/mobile3.png'],
    'samsung galaxy a35': ['images/mobile.png', 'images/mobile2.png', 'images/mobile3.png', 'images/mobile4.png'],
    'oneplus nord': ['images/mobile2.png', 'images/mobile3.png', 'images/mobile4.png', 'images/mobile.png'],
    'xiaomi redmi': ['images/mobile4.png', 'images/mobile3.png', 'images/mobile2.png', 'images/mobile.png'],
    'airbuds pro': ['images/earbuds.png', 'images/mobile.png', 'images/mobile2.png', 'images/mobile3.png']
  };

  return galleryMap[normalized] || [fallbackImage];
}

function renderProductDetails() {
  if (!document.querySelector('.product-detail-wrap')) return;

  const params = new URLSearchParams(window.location.search);
  const name = params.get('name') || 'iPhone 16 Pro';
  const image = params.get('image') || 'images/iphone.jpg';
  const price = params.get('price') || '₹1,29,999';
  const details = productDetails[name.toLowerCase()] || {
    description: `${name} is a thoughtfully selected ShopEase product with dependable quality, modern design, and excellent everyday value.`,
    highlights: ['Quality everyday design', 'Carefully selected by ShopEase', 'Reliable performance', 'Ready for fast delivery'],
    specifications: ['Premium selection', 'Easy everyday use', 'Secure packaging', '7-day return support']
  };

  const gallery = getProductGallery(name, image);
  const mainImage = document.querySelector('.main-image img');
  const title = document.querySelector('.detail-info h1');
  const priceElement = document.querySelector('.price-row strong');
  const description = document.querySelector('.detail-copy');
  const addButton = document.querySelector('.detail-actions button[data-name]');
  const buyButton = document.querySelector('.detail-actions .buy-now');
  const thumbButtons = document.querySelectorAll('.thumb-item');
  const highlights = document.querySelector('.info-card:first-child ul');
  const specifications = document.querySelector('.info-card:nth-child(2) ul');

  if (mainImage) {
    mainImage.src = gallery[0];
    mainImage.alt = name;
  }
  if (title) title.textContent = name;
  if (priceElement) priceElement.textContent = price;
  if (description) description.textContent = details.description;
  if (addButton) addButton.dataset.name = name;
  if (buyButton) buyButton.dataset.name = name;

  thumbButtons.forEach((button, index) => {
    const thumbImage = button.querySelector('img');
    const galleryImage = gallery[index % gallery.length] || gallery[0];

    if (thumbImage) {
      thumbImage.src = galleryImage;
      thumbImage.alt = `${name} view ${index + 1}`;
    }

    button.classList.toggle('active', index === 0);
    button.onclick = () => {
      if (mainImage) {
        mainImage.src = galleryImage;
        mainImage.alt = `${name} view ${index + 1}`;
      }
      thumbButtons.forEach((item) => item.classList.remove('active'));
      button.classList.add('active');
    };
  });

  if (highlights) highlights.innerHTML = details.highlights.map((item) => `<li>${item}</li>`).join('');
  if (specifications) specifications.innerHTML = details.specifications.map((item) => `<li>${item}</li>`).join('');
  document.title = `${name} | ShopEase`;
}

wireProductDetailLinks();
renderProductDetails();
wireProductButtons();

document.querySelectorAll('.product-card').forEach((card) => {
  card.addEventListener('click', function (event) {
    const clickedButton = event.target.closest('button');
    if (clickedButton) return;
    const link = this.getAttribute('data-link') || 'product-details.html';
    window.location.href = link;
  });
});

function getProductCards() {
  return Array.from(document.querySelectorAll('.product-card, .product'));
}

function getProductPrice(card) {
  const priceText = card.querySelector('.product-body p, .price')?.textContent || '';
  return Number(priceText.replace(/[^0-9]/g, '')) || 0;
}

function sortProducts(sortMode) {
  const grid = document.querySelector('.product-grid');
  if (!grid) return;

  const cards = getProductCards();
  if (sortMode === 'popular') {
    cards.sort((first, second) => Number(first.dataset.popularIndex) - Number(second.dataset.popularIndex));
  } else if (sortMode === 'price-low') {
    cards.sort((first, second) => getProductPrice(first) - getProductPrice(second));
  } else if (sortMode === 'price-high') {
    cards.sort((first, second) => getProductPrice(second) - getProductPrice(first));
  } else if (sortMode === 'name') {
    cards.sort((first, second) => {
      const firstName = first.querySelector('h3')?.textContent.trim() || '';
      const secondName = second.querySelector('h3')?.textContent.trim() || '';
      return firstName.localeCompare(secondName);
    });
  }

  cards.forEach((card) => grid.appendChild(card));
}

function setupProductSort() {
  const sortSelect = document.getElementById('product-sort');
  if (!sortSelect) return;
  getProductCards().forEach((card, index) => {
    card.dataset.popularIndex = index;
  });
  sortSelect.addEventListener('change', () => sortProducts(sortSelect.value));
}

window.sortProducts = sortProducts;
setupProductSort();

function matchesCategory(card, category) {
  const group = (card.getAttribute('data-search-group') || 'general').toLowerCase();
  const text = `${card.getAttribute('data-name') || ''} ${card.getAttribute('data-keywords') || ''} ${card.querySelector('h3')?.textContent || ''}`.toLowerCase();

  switch (category) {
    case 'all':
      return true;
    case 'mobiles':
      return group === 'mobiles' || group === 'mobile-model' || /mobile|phone|smartphone|iphone|samsung|galaxy|oneplus|xiaomi|redmi|android/.test(text);
    case 'laptops':
      return group === 'laptops' || /laptop|computer|notebook|macbook/.test(text);
    case 'beauty':
      return group === 'beauty' || /perfume|beauty|cosmetic|fragrance/.test(text);
    case 'fashion':
      return group === 'fashion' || /fashion|sneaker|shoes|wear|clothing|dress/.test(text);
    case 'shoes':
      return /shoe|sneaker|sandal|footwear/.test(text);
    case 'watches':
      return /watch|wearable/.test(text);
    case 'accessories':
      return group === 'accessories' || group === 'accessory' || /earbud|headset|watch|charger|case|speaker|accessory/.test(text);
    default:
      return true;
  }
}

function applyCategoryFilter(category) {
  const cards = getProductCards();
  let visibleCount = 0;

  cards.forEach((card) => {
    const shouldShow = matchesCategory(card, category);
    card.style.display = shouldShow ? '' : 'none';
    if (shouldShow) visibleCount += 1;
  });

  const activeInput = searchInput?.value.trim().toLowerCase() || '';
  if (activeInput) {
    showSearchMessage(activeInput, visibleCount);
  } else {
    showSearchMessage('', visibleCount);
  }
}

window.applyCategoryFilter = applyCategoryFilter;

function setupCategoryFilters() {
  const tags = document.querySelectorAll('.tag');
  if (!tags.length) return;

  tags.forEach((tag) => {
    tag.addEventListener('click', () => {
      tags.forEach((item) => item.classList.toggle('active', item === tag));
      const category = (tag.dataset.filter || tag.textContent.trim().toLowerCase()).toLowerCase();
      applyCategoryFilter(category);
    });
  });
}

window.setupCategoryFilters = setupCategoryFilters;

setupCategoryFilters();

function applyCategoryFromQuery() {
  const category = new URLSearchParams(window.location.search).get('category')?.toLowerCase();
  if (!category) return;
  const matchingTag = Array.from(document.querySelectorAll('.tag')).find((tag) => tag.dataset.filter === category);
  if (matchingTag) matchingTag.click();
}

applyCategoryFromQuery();

function showSearchMessage(input, visibleCount) {
  let message = document.getElementById('search-no-results');
  if (!message) {
    message = document.createElement('p');
    message.id = 'search-no-results';
    message.className = 'search-no-results';
    const grid = document.querySelector('.product-grid');
    if (grid) {
      grid.insertAdjacentElement('afterend', message);
    }
  }

  if (input && visibleCount === 0) {
    message.textContent = `No products found for "${input}".`;
    message.style.display = 'block';
  } else {
    message.textContent = '';
    message.style.display = 'none';
  }
}

function searchProduct(event) {
  if (event) event.preventDefault();

  const input = searchInput?.value.trim().toLowerCase() || '';
  const isProductsPage = window.location.pathname.toLowerCase().includes('products.html') || window.location.pathname.toLowerCase().includes('products.jsp');

  if (input && !isProductsPage) {
    window.location.href = `products.html?q=${encodeURIComponent(searchInput.value.trim())}`;
    return;
  }

  const cards = getProductCards();
  let visibleCount = 0;
  const searchTerms = input.split(/\s+/).filter(Boolean);
  const accessoryTerms = ['earbuds', 'charger', 'case', 'accessory', 'cover', 'power', 'speaker', 'stand', 'protector'];
  const mobileTerms = ['mobile', 'phone', 'smartphone', 'model', 'android', 'iphone', 'samsung', 'galaxy', 'oneplus', 'pixel', 'xiaomi', 'redmi'];
  const isGenericMobileQuery = searchTerms.length === 1 && searchTerms[0] === 'mobile';

  cards.forEach((card) => {
    const title = card.querySelector('h3')?.textContent.toLowerCase() || '';
    const summary = card.querySelector('p')?.textContent.toLowerCase() || '';
    const dataName = card.getAttribute('data-name')?.toLowerCase() || '';
    const keywords = card.getAttribute('data-keywords')?.toLowerCase() || '';
    const group = card.getAttribute('data-search-group') || 'general';
    const text = `${title} ${summary} ${dataName} ${keywords}`;
    const matches = searchTerms.length === 0
      ? true
      : searchTerms.every((term) => text.includes(term));
    const groupMatches = isGenericMobileQuery ? group === 'mobile-model' : true;
    const shouldShow = matches && groupMatches;
    card.style.display = shouldShow ? '' : 'none';
    if (shouldShow) visibleCount += 1;
  });

  showSearchMessage(input, visibleCount);
}

function applySearchFromQuery() {
  const params = new URLSearchParams(window.location.search);
  const query = params.get('q')?.trim() || '';

  if (searchInput && query) {
    searchInput.value = query;
    searchProduct();
  }
}

if (searchForm) {
  searchForm.addEventListener('submit', searchProduct);
}

if (searchInput) {
  searchInput.addEventListener('keydown', (event) => {
    if (event.key === 'Enter') {
      searchProduct(event);
    }
  });
}

if (searchButton) {
  searchButton.addEventListener('click', (event) => {
    searchProduct(event);
  });
}

applySearchFromQuery();

window.addEventListener('scroll', function () {
  if (!navbar) return;
  if (window.scrollY > 40) {
    navbar.style.background = 'rgba(15, 23, 42, 0.98)';
  } else {
    navbar.style.background = 'rgba(15, 23, 42, 0.95)';
  }
});

document.querySelector('.newsletter-card button')?.addEventListener('click', function () {
  const input = document.querySelector('.newsletter-card input');
  const email = input?.value.trim();

  if (!email) {
    showToast('Please enter your email');
    return;
  }

  showToast(`Thanks, ${email}! You are subscribed.`);
  if (input) input.value = '';
});

products.forEach((product, index) => {
  product.style.opacity = '0';
  product.style.transform = 'translateY(24px)';
  product.style.transition = `opacity 0.6s ease ${index * 0.08}s, transform 0.6s ease ${index * 0.08}s`;
});

window.addEventListener('load', () => {
  products.forEach((product) => {
    product.style.opacity = '1';
    product.style.transform = 'translateY(0)';
  });
});