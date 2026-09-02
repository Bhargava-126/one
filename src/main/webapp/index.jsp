<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop — Easy Shopping</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
  --bg:#f7f8fc;--surface:#fff;--text:#172033;--muted:#6d7485;--primary:#5b4df6;
  --primary2:#7c6cff;--soft:#eeecff;--border:#e8eaf1;--danger:#ef476f;--success:#18a66a;
  --shadow:0 12px 35px rgba(23,32,51,.08);--radius:18px;--max:1240px;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{margin:0;background:var(--bg);color:var(--text);font-family:Inter,Arial,sans-serif;line-height:1.5}
button,input,select{font:inherit}
button{cursor:pointer}
a{text-decoration:none;color:inherit}
.container{max-width:var(--max);margin:auto;padding:0 22px}

/* Header */
.topbar{background:#171b2d;color:#fff;font-size:13px}
.topbar .container{height:36px;display:flex;align-items:center;justify-content:space-between}
.header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.94);backdrop-filter:blur(14px);border-bottom:1px solid var(--border)}
.header-row{min-height:76px;display:flex;align-items:center;gap:22px}
.logo{font:800 23px Poppins,sans-serif;white-space:nowrap}
.logo span{color:var(--primary)}
.menu-btn{display:none;border:0;background:var(--soft);width:42px;height:42px;border-radius:12px;color:var(--primary)}
.search{flex:1;max-width:520px;position:relative}
.search input{width:100%;height:46px;border:1px solid var(--border);border-radius:13px;padding:0 48px 0 17px;background:#fafaff;outline:none}
.search input:focus{border-color:var(--primary);box-shadow:0 0 0 3px rgba(91,77,246,.1)}
.search button{position:absolute;right:5px;top:5px;width:36px;height:36px;border:0;border-radius:9px;background:var(--primary);color:#fff}
.nav{display:flex;gap:5px;align-items:center}
.nav a{padding:10px 11px;border-radius:10px;font-weight:600;font-size:14px}
.nav a:hover,.nav a.active{background:var(--soft);color:var(--primary)}
.actions{margin-left:auto;display:flex;gap:8px}
.action{position:relative;width:42px;height:42px;border:1px solid var(--border);background:#fff;border-radius:12px;color:var(--text)}
.action:hover{color:var(--primary);border-color:#d9d5ff}
.badge-count{position:absolute;right:-4px;top:-5px;background:var(--danger);color:#fff;width:19px;height:19px;border-radius:50%;font-size:11px;font-weight:800;display:grid;place-items:center}

/* Mobile nav */
.mobile-nav{display:none;border-top:1px solid var(--border);padding:10px 22px 16px;background:#fff}
.mobile-nav a{display:block;padding:12px;border-radius:10px;font-weight:600}
.mobile-nav a:hover{background:var(--soft);color:var(--primary)}

/* Hero */
.hero{padding:34px 0 22px}
.hero-card{min-height:420px;border-radius:26px;overflow:hidden;position:relative;background:
linear-gradient(90deg,rgba(20,24,45,.93) 0%,rgba(20,24,45,.78) 48%,rgba(20,24,45,.18) 100%),
url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
.hero-content{max-width:620px;color:#fff;padding:66px 58px}
.eyebrow{display:inline-flex;gap:7px;align-items:center;background:rgba(255,255,255,.13);padding:7px 12px;border-radius:999px;font-size:12px;font-weight:700;margin-bottom:18px}
.hero h1{font:800 clamp(34px,5vw,56px) Poppins,sans-serif;line-height:1.08;margin:0 0 16px}
.hero p{color:rgba(255,255,255,.84);max-width:560px;margin:0 0 26px}
.btn{border:0;border-radius:12px;padding:12px 18px;font-weight:700;display:inline-flex;gap:9px;align-items:center;justify-content:center}
.btn-primary{background:var(--primary);color:#fff;box-shadow:0 8px 20px rgba(91,77,246,.25)}
.btn-light{background:#fff;color:#242943}
.btn-outline{background:transparent;color:#fff;border:1px solid rgba(255,255,255,.35)}
.hero .btn{margin-right:8px}

/* Benefits */
.benefits{display:grid;grid-template-columns:repeat(4,1fr);gap:12px;margin:18px 0 8px}
.benefit{background:#fff;border:1px solid var(--border);padding:15px;border-radius:15px;display:flex;gap:12px;align-items:center}
.benefit i{width:40px;height:40px;border-radius:11px;background:var(--soft);color:var(--primary);display:grid;place-items:center}
.benefit strong{font-size:13px;display:block}.benefit span{font-size:11px;color:var(--muted)}

/* Sections */
.section{padding:38px 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:15px;margin-bottom:18px}
.section-head h2{font:700 25px Poppins;margin:0}
.section-head p{color:var(--muted);margin:5px 0 0;font-size:14px}
.link{color:var(--primary);font-weight:700;font-size:14px}

/* Categories */
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
.category{border:1px solid var(--border);background:#fff;border-radius:16px;padding:20px 12px;text-align:center;transition:.2s}
.category:hover,.category.selected{transform:translateY(-3px);border-color:#d6d1ff;box-shadow:var(--shadow);background:#fbfaff}
.category i{font-size:25px;color:var(--primary);margin-bottom:9px}
.category strong{display:block;font-size:13px}.category small{color:var(--muted);font-size:11px}

/* Products */
.toolbar{background:#fff;border:1px solid var(--border);padding:12px;border-radius:15px;display:flex;align-items:center;justify-content:space-between;gap:10px;margin-bottom:17px}
.chips{display:flex;gap:7px;overflow:auto}
.chip{white-space:nowrap;border:1px solid var(--border);background:#fff;border-radius:999px;padding:8px 13px;font-size:12px;font-weight:700}
.chip.active,.chip:hover{background:var(--primary);color:#fff;border-color:var(--primary)}
.sort{border:1px solid var(--border);background:#fff;border-radius:10px;padding:9px 12px;outline:none;font-size:12px}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:17px}
.product{background:#fff;border:1px solid var(--border);border-radius:18px;overflow:hidden;position:relative;transition:.22s;display:flex;flex-direction:column}
.product:hover{transform:translateY(-5px);box-shadow:var(--shadow)}
.product-image{height:220px;background:#f2f3f8;position:relative;overflow:hidden}
.product-image img{width:100%;height:100%;object-fit:cover;transition:.3s}
.product:hover img{transform:scale(1.04)}
.product-badge{position:absolute;top:12px;left:12px;background:#fff;color:var(--primary);padding:5px 8px;border-radius:8px;font-size:10px;font-weight:800;box-shadow:0 5px 15px rgba(0,0,0,.08)}
.wish{position:absolute;top:10px;right:10px;width:35px;height:35px;border:0;border-radius:50%;background:#fff;color:#777;box-shadow:0 5px 15px rgba(0,0,0,.08)}
.wish.active{color:var(--danger)}
.product-body{padding:14px 15px 15px;display:flex;flex-direction:column;flex:1}
.category-label{font-size:10px;color:var(--primary);font-weight:800;text-transform:uppercase;letter-spacing:.05em}
.product h3{font-size:15px;margin:5px 0 7px}
.rating{font-size:12px;color:#f5ad16}.rating span{color:var(--muted)}
.price-line{display:flex;align-items:center;gap:8px;margin:8px 0 13px}
.price{font-size:19px;font-weight:800}.old{font-size:12px;color:#a0a5b1;text-decoration:line-through}
.add{width:100%;border:0;background:#f0efff;color:var(--primary);border-radius:11px;padding:10px;font-weight:800}
.add:hover{background:var(--primary);color:#fff}
.empty{grid-column:1/-1;text-align:center;padding:55px;background:#fff;border:1px solid var(--border);border-radius:16px;color:var(--muted)}

/* Deal */
.deal{display:grid;grid-template-columns:1.05fr .95fr;background:#191d31;border-radius:24px;overflow:hidden;color:#fff}
.deal-img{min-height:340px;background:url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85') center/cover}
.deal-content{padding:42px}
.deal-content .eyebrow{background:rgba(124,108,255,.2);color:#dcd8ff}
.deal h2{font:700 32px Poppins;margin:0 0 10px}
.deal p{color:#bbc0d2}
.timer{display:flex;gap:9px;margin:22px 0}
.time{min-width:65px;text-align:center;background:#272c45;border:1px solid #373c57;border-radius:12px;padding:9px}
.time strong{font-size:21px;display:block}.time span{font-size:9px;color:#aeb4c7}
.deal-price{font-size:28px;font-weight:800}.deal-price del{font-size:14px;color:#9298ab;margin-left:8px}
.progress{height:7px;background:#34394e;border-radius:99px;margin:13px 0 18px;overflow:hidden}
.progress span{display:block;width:72%;height:100%;background:var(--primary2);border-radius:99px}

/* Reviews */
.reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}
.review{background:#fff;border:1px solid var(--border);border-radius:17px;padding:20px}
.review-top{display:flex;justify-content:space-between;gap:10px}
.avatar{width:40px;height:40px;border-radius:50%;object-fit:cover}
.review p{font-size:13px;color:#50586b}

/* Newsletter */
.newsletter{background:linear-gradient(135deg,#5b4df6,#8274ff);color:#fff;border-radius:22px;padding:38px;display:flex;align-items:center;justify-content:space-between;gap:25px}
.newsletter h2{font:700 25px Poppins;margin:0}.newsletter p{margin:5px 0 0;color:#e6e3ff;font-size:13px}
.newsletter form{display:flex;background:#fff;padding:5px;border-radius:13px;min-width:390px}
.newsletter input{border:0;outline:0;padding:10px;flex:1;min-width:0}.newsletter button{border-radius:9px}

/* Footer */
footer{background:#171b2d;color:#aeb4c5;margin-top:40px;padding:45px 0 20px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px}
footer h3,footer h4{color:#fff;margin-top:0}footer h3{font:700 22px Poppins}
footer p,footer a{font-size:13px}footer a{display:block;margin:8px 0}footer a:hover{color:#fff}
.copy{text-align:center;border-top:1px solid #2c3041;margin-top:30px;padding-top:18px;font-size:12px}

/* Cart drawer */
.overlay{position:fixed;inset:0;background:rgba(0,0,0,.4);z-index:80;display:none}
.overlay.show{display:block}
.cart-drawer{position:fixed;right:0;top:0;height:100%;width:min(430px,100%);background:#fff;z-index:90;transform:translateX(100%);transition:.25s;display:flex;flex-direction:column}
.cart-drawer.open{transform:translateX(0)}
.cart-head{padding:20px;border-bottom:1px solid var(--border);display:flex;justify-content:space-between;align-items:center}
.cart-head h2{margin:0;font:700 21px Poppins}
.close{border:0;background:#f1f2f6;width:36px;height:36px;border-radius:10px}
.cart-items{flex:1;overflow:auto;padding:15px}
.cart-item{display:flex;gap:12px;padding:12px 0;border-bottom:1px solid var(--border)}
.cart-item img{width:68px;height:68px;border-radius:11px;object-fit:cover}
.cart-item h4{font-size:13px;margin:2px 0 5px}.cart-item small{color:var(--muted)}
.qty{display:flex;align-items:center;gap:8px;margin-top:8px}.qty button{width:25px;height:25px;border:1px solid var(--border);background:#fff;border-radius:7px}
.cart-foot{padding:18px;border-top:1px solid var(--border)}.total{display:flex;justify-content:space-between;font-size:18px;font-weight:800;margin-bottom:12px}
.checkout{width:100%}

/* Toast */
.toast{position:fixed;bottom:24px;left:50%;transform:translate(-50%,20px);background:#171b2d;color:#fff;padding:12px 17px;border-radius:11px;font-size:13px;opacity:0;pointer-events:none;transition:.25s;z-index:120}
.toast.show{opacity:1;transform:translate(-50%,0)}

/* Responsive */
@media(max-width:1050px){
  .nav{display:none}.menu-btn{display:block}.header-row{gap:12px}
  .categories{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(3,1fr)}
  .benefits{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:760px){
  .topbar{display:none}.header-row{min-height:66px}.search{order:3;flex-basis:100%;max-width:none}
  .header-row{flex-wrap:wrap;padding:10px 0}.logo{flex:1}
  .hero-card{min-height:500px}.hero-content{padding:45px 28px}
  .benefits{grid-template-columns:1fr 1fr}.categories{grid-template-columns:repeat(2,1fr)}
  .products{grid-template-columns:repeat(2,1fr)}.product-image{height:180px}
  .deal{grid-template-columns:1fr}.deal-img{min-height:230px}.deal-content{padding:28px}
  .reviews{grid-template-columns:1fr}.newsletter{flex-direction:column;align-items:stretch}.newsletter form{min-width:0}
  .footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:500px){
  .container{padding:0 15px}.hero{padding-top:15px}.hero-card{border-radius:19px}
  .hero-content{padding:35px 21px}.hero h1{font-size:34px}
  .benefits{grid-template-columns:1fr}.section{padding:28px 0}.section-head{align-items:flex-start;flex-direction:column}
  .toolbar{align-items:flex-start;flex-direction:column}.chips{width:100%}.sort{width:100%}
  .products{grid-template-columns:1fr 1fr;gap:10px}.product-image{height:155px}.product-body{padding:11px}
  .product h3{font-size:13px}.price{font-size:16px}.add{font-size:12px}
  .deal h2{font-size:25px}.timer{gap:5px}.time{min-width:57px}
  .newsletter{padding:25px 20px}.newsletter form{display:flex;flex-direction:column;background:transparent;padding:0}.newsletter input{border-radius:10px;margin-bottom:7px}
  .footer-grid{grid-template-columns:1fr}
}
</style>
</head>

<body>
<div class="topbar">
  <div class="container"><span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over $50</span><span>Easy returns · Secure checkout</span></div>
</div>

<header class="header">
  <div class="container header-row">
    <button class="menu-btn" id="menuBtn" aria-label="Menu"><i class="fa-solid fa-bars"></i></button>
    <a class="logo" href="#" onclick="goHome()">Nexus<span>Shop</span></a>

    <nav class="nav">
      <a class="active" href="#" onclick="goHome()">Home</a>
      <a href="#shop">Shop</a>
      <a href="#categories">Categories</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>

    <div class="search">
      <input id="searchInput" type="search" placeholder="Search products..." autocomplete="off">
      <button id="searchBtn" aria-label="Search"><i class="fa-solid fa-search"></i></button>
    </div>

    <div class="actions">
      <button class="action" title="Wishlist" onclick="showWishlist()"><i class="fa-regular fa-heart"></i><span class="badge-count" id="wishCount" style="display:none">0</span></button>
      <button class="action" title="Account" onclick="toast('Account area coming soon')"><i class="fa-regular fa-user"></i></button>
      <button class="action" title="Cart" onclick="openCart()"><i class="fa-solid fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span></button>
    </div>
  </div>
  <div class="mobile-nav" id="mobileNav">
    <a href="#" onclick="goHome()">Home</a><a href="#shop">Shop</a><a href="#categories">Categories</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
  </div>
</header>

<main>
<section class="hero">
  <div class="container">
    <div class="hero-card">
      <div class="hero-content">
        <div class="eyebrow"><i class="fa-solid fa-sparkles"></i> NEW SEASON · HANDPICKED FOR YOU</div>
        <h1>Everything you want, in one easy place.</h1>
        <p>Discover popular tech, fashion and everyday essentials with simple browsing, clear prices and quick checkout.</p>
        <button class="btn btn-light" onclick="document.getElementById('shop').scrollIntoView()">Start Shopping <i class="fa-solid fa-arrow-right"></i></button>
        <button class="btn btn-outline" onclick="document.getElementById('deals').scrollIntoView()">View Deals</button>
      </div>
    </div>

    <div class="benefits">
      <div class="benefit"><i class="fa-solid fa-truck-fast"></i><div><strong>Fast delivery</strong><span>Track every order</span></div></div>
      <div class="benefit"><i class="fa-solid fa-shield-halved"></i><div><strong>Secure payment</strong><span>Your data stays safe</span></div></div>
      <div class="benefit"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>Hassle-free support</span></div></div>
      <div class="benefit"><i class="fa-solid fa-headset"></i><div><strong>Friendly support</strong><span>We're here to help</span></div></div>
    </div>
  </div>
</section>

<section class="section" id="categories">
<div class="container">
  <div class="section-head"><div><h2>What are you looking for?</h2><p>Pick a category and we'll show you the best matches.</p></div></div>
  <div class="categories" id="categoriesGrid"></div>
</div>
</section>

<section class="section" id="shop">
<div class="container">
  <div class="section-head">
    <div><h2>Popular products</h2><p id="resultText">Showing all products</p></div>
    <a class="link" href="#shop" onclick="clearFilters()">View all <i class="fa-solid fa-arrow-right"></i></a>
  </div>
  <div class="toolbar">
    <div class="chips" id="chips"></div>
    <select class="sort" id="sortSelect" aria-label="Sort products">
      <option value="featured">Sort: Featured</option>
      <option value="low">Price: Low to high</option>
      <option value="high">Price: High to low</option>
      <option value="rating">Top rated</option>
    </select>
  </div>
  <div class="products" id="productsGrid"></div>
</div>
</section>

<section class="section" id="deals">
<div class="container">
  <div class="section-head"><div><h2>Deal of the day</h2><p>Save more on a limited-time favourite.</p></div></div>
  <div class="deal">
    <div class="deal-img"></div>
    <div class="deal-content">
      <div class="eyebrow"><i class="fa-solid fa-bolt"></i> LIMITED TIME OFFER</div>
      <h2>MacBook Air M2</h2>
      <p>Thin, light and powerful. A premium laptop for work, study and everyday creativity.</p>
      <div class="timer">
        <div class="time"><strong id="days">01</strong><span>DAYS</span></div>
        <div class="time"><strong id="hours">00</strong><span>HOURS</span></div>
        <div class="time"><strong id="mins">00</strong><span>MINUTES</span></div>
        <div class="time"><strong id="secs">00</strong><span>SECONDS</span></div>
      </div>
      <div class="deal-price">$999 <del>$1,199</del></div>
      <div class="progress"><span></span></div>
      <small>Only 12 items left at this price</small><br><br>
      <button class="btn btn-light" onclick="addDeal()">Add deal to cart <i class="fa-solid fa-bag-shopping"></i></button>
    </div>
  </div>
</div>
</section>

<section class="section" id="reviews">
<div class="container">
  <div class="section-head"><div><h2>Loved by shoppers</h2><p>Real feedback from our community.</p></div></div>
  <div class="reviews">
    <div class="review"><div class="review-top"><div><strong>Ava Martin</strong><div class="rating">★★★★★</div></div><img class="avatar" src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80"></div><p>“The site is so easy to browse. My order arrived quickly and everything looked exactly like the photos.”</p></div>
    <div class="review"><div class="review-top"><div><strong>Michael Lee</strong><div class="rating">★★★★☆</div></div><img class="avatar" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80"></div><p>“Great selection and a very smooth shopping experience. Finding products was much easier than expected.”</p></div>
    <div class="review"><div class="review-top"><div><strong>Sophia Chen</strong><div class="rating">★★★★★</div></div><img class="avatar" src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80"></div><p>“I loved the simple checkout and clear pricing. Definitely coming back for my next purchase.”</p></div>
  </div>
</div>
</section>

<section class="section">
<div class="container">
  <div class="newsletter">
    <div><h2>Get deals before everyone else.</h2><p>Subscribe for new arrivals, exclusive offers and useful updates.</p></div>
    <form id="newsletterForm"><input id="email" type="email" placeholder="Your email address" required><button class="btn btn-light">Subscribe</button></form>
  </div>
</div>
</section>
</main>

<footer>
<div class="container">
  <div class="footer-grid">
    <div><h3>Nexus<span style="color:#8274ff">Shop</span></h3><p>A simple, modern shopping experience built around what customers actually need: easy discovery, clear information and fast actions.</p></div>
    <div><h4>Shop</h4><a href="#shop">All products</a><a href="#categories">Categories</a><a href="#deals">Deals</a></div>
    <div><h4>Help</h4><a href="#" onclick="toast('Help Center coming soon')">Help Center</a><a href="#" onclick="toast('Returns information coming soon')">Returns</a><a href="#" onclick="toast('Contact support coming soon')">Contact</a></div>
    <div><h4>Follow</h4><a href="#"><i class="fa-brands fa-instagram"></i> Instagram</a><a href="#"><i class="fa-brands fa-facebook"></i> Facebook</a><a href="#"><i class="fa-brands fa-x-twitter"></i> X / Twitter</a></div>
  </div>
  <div class="copy">© <span id="year"></span> NexusShop. All rights reserved.</div>
</div>
</footer>

<div class="overlay" id="overlay" onclick="closeCart()"></div>
<aside class="cart-drawer" id="cartDrawer">
  <div class="cart-head"><h2>Your cart</h2><button class="close" onclick="closeCart()"><i class="fa-solid fa-xmark"></i></button></div>
  <div class="cart-items" id="cartItems"></div>
  <div class="cart-foot"><div class="total"><span>Total</span><span id="cartTotal">$0</span></div><button class="btn btn-primary checkout" onclick="checkout()">Proceed to checkout <i class="fa-solid fa-arrow-right"></i></button></div>
</aside>
<div class="toast" id="toast"></div>

<script>
const CATEGORIES=[
{id:'all',name:'All',icon:'fa-grid-2',desc:'Everything'},
{id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',desc:'Phones & more'},
{id:'laptops',name:'Laptops',icon:'fa-laptop',desc:'Work & study'},
{id:'clothing',name:'Clothing',icon:'fa-shirt',desc:'Latest styles'},
{id:'gadgets',name:'Gadgets',icon:'fa-headphones',desc:'Smart tech'},
{id:'footwear',name:'Footwear',icon:'fa-shoe-prints',desc:'Walk in style'},
{id:'accessories',name:'Accessories',icon:'fa-watch',desc:'Finishing touches'}
];

const PRODUCTS=[
{id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'NEW',img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'phones'},
{id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'laptops'},
{id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'25% OFF',img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'accessories'},
{id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'footwear'},
{id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'TOP PICK',img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'gadgets'},
{id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'accessories'},
{id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'SALE',img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'accessories'},
{id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'gadgets'}
];

let selectedCategory='all';
let query='';
let sort='featured';
let cart=[];
let wishlist=new Set();

const $=id=>document.getElementById(id);
const categoryName=id=>(CATEGORIES.find(c=>c.id===id)||{}).name||id;

function renderCategories(){
  $('categoriesGrid').innerHTML=CATEGORIES.filter(c=>c.id!=='all').map(c=>`
    <button class="category ${selectedCategory===c.id?'selected':''}" onclick="selectCategory('${c.id}')">
      <i class="fa-solid ${c.icon}"></i><strong>${c.name}</strong><small>${c.desc}</small>
    </button>`).join('');
}
function renderChips(){
  $('chips').innerHTML=CATEGORIES.map(c=>`
    <button class="chip ${selectedCategory===c.id?'active':''}" onclick="selectCategory('${c.id}')">${c.name}</button>`).join('');
}
function getProducts(){
  let list=PRODUCTS.filter(p=>(selectedCategory==='all'||p.category===selectedCategory)&&
    (!query||p.title.toLowerCase().includes(query)||categoryName(p.category).toLowerCase().includes(query)));
  if(sort==='low') list.sort((a,b)=>a.price-b.price);
  if(sort==='high') list.sort((a,b)=>b.price-a.price);
  if(sort==='rating') list.sort((a,b)=>b.rating-a.rating);
  return list;
}
function renderProducts(){
  const list=getProducts();
  $('resultText').textContent=list.length?`Showing ${list.length} product${list.length>1?'s':''}`:'No products found';
  $('productsGrid').innerHTML=list.length?list.map(p=>`
    <article class="product">
      <div class="product-image">
        ${p.badge?`<span class="product-badge">${p.badge}</span>`:''}
        <button class="wish ${wishlist.has(p.id)?'active':''}" onclick="toggleWish(${p.id})"><i class="${wishlist.has(p.id)?'fa-solid':'fa-regular'} fa-heart"></i></button>
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
      </div>
      <div class="product-body">
        <span class="category-label">${categoryName(p.category)}</span>
        <h3>${escapeHtml(p.title)}</h3>
        <div class="rating">${'★'.repeat(p.rating)} <span>(${p.reviews})</span></div>
        <div class="price-line"><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice?`<span class="old">$${p.oldPrice.toLocaleString()}</span>`:''}</div>
        <button class="add" onclick="addToCart(${p.id})"><i class="fa-solid fa-bag-shopping"></i> Add to cart</button>
      </div>
    </article>`).join(''):`<div class="empty"><i class="fa-solid fa-magnifying-glass" style="font-size:28px"></i><h3>No products found</h3><p>Try another search or choose a different category.</p><button class="btn btn-primary" onclick="clearFilters()">Show all products</button></div>`;
}
function selectCategory(id){
  selectedCategory=id;query='';
  $('searchInput').value='';
  renderCategories();renderChips();renderProducts();
  $('shop').scrollIntoView({behavior:'smooth',block:'start'});
}
function clearFilters(){selectedCategory='all';query='';$('searchInput').value='';renderCategories();renderChips();renderProducts()}
function escapeHtml(t){return String(t).replace(/[&<>"']/g,m=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[m]))}

function addToCart(id){
  const existing=cart.find(x=>x.id===id);
  if(existing) existing.qty++;
  else {const p=PRODUCTS.find(x=>x.id===id);cart.push({...p,qty:1})}
  updateCart();toast('Added to your cart');
}
function addDeal(){
  const existing=cart.find(x=>x.id===99);
  if(existing) existing.qty++; else cart.push({id:99,title:'MacBook Air M2 — Deal',price:999,img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=300&q=80',qty:1});
  updateCart();toast('Deal added to your cart');openCart();
}
function updateCart(){
  const count=cart.reduce((s,x)=>s+x.qty,0);$('cartCount').textContent=count;
  $('cartItems').innerHTML=cart.length?cart.map(x=>`
    <div class="cart-item">
      <img src="${x.img}" alt="">
      <div style="flex:1"><h4>${escapeHtml(x.title)}</h4><small>$${x.price.toLocaleString()} each</small>
      <div class="qty"><button onclick="changeQty(${x.id},-1)">−</button><strong>${x.qty}</strong><button onclick="changeQty(${x.id},1)">+</button>
      <button style="margin-left:auto;border:0;background:none;color:#ef476f" onclick="removeCart(${x.id})"><i class="fa-regular fa-trash-can"></i></button></div></div>
    </div>`).join(''):`<div style="text-align:center;padding:70px 20px;color:var(--muted)"><i class="fa-solid fa-bag-shopping" style="font-size:40px;margin-bottom:15px"></i><h3>Your cart is empty</h3><p>Add something you love and it'll appear here.</p></div>`;
  $('cartTotal').textContent='$'+cart.reduce((s,x)=>s+x.price*x.qty,0).toLocaleString();
}
function changeQty(id,n){const x=cart.find(x=>x.id===id);if(!x)return;x.qty+=n;if(x.qty<=0)cart=cart.filter(x=>x.id!==id);updateCart()}
function removeCart(id){cart=cart.filter(x=>x.id!==id);updateCart()}
function openCart(){$('cartDrawer').classList.add('open');$('overlay').classList.add('show');document.body.style.overflow='hidden'}
function closeCart(){$('cartDrawer').classList.remove('open');$('overlay').classList.remove('show');document.body.style.overflow=''}
function checkout(){if(!cart.length)return toast('Your cart is empty');toast('Checkout demo — connect your payment flow here')}
function toggleWish(id){wishlist.has(id)?wishlist.delete(id):wishlist.add(id);$('wishCount').textContent=wishlist.size;$('wishCount').style.display=wishlist.size?'grid':'none';renderProducts();toast(wishlist.has(id)?'Added to wishlist':'Removed from wishlist')}
function showWishlist(){if(!wishlist.size)return toast('Your wishlist is empty');selectedCategory='all';query='';$('searchInput').value='';renderProducts();$('shop').scrollIntoView({behavior:'smooth'});toast(`${wishlist.size} item${wishlist.size>1?'s':''} saved in wishlist`)}
function toast(text){const t=$('toast');t.textContent=text;t.classList.add('show');clearTimeout(window.__toast);window.__toast=setTimeout(()=>t.classList.remove('show'),2200)}
function goHome(){window.scrollTo({top:0,behavior:'smooth'})}

$('searchBtn').onclick=()=>{query=$('searchInput').value.trim().toLowerCase();selectedCategory='all';renderCategories();renderChips();renderProducts();$('shop').scrollIntoView({behavior:'smooth'})};
$('searchInput').addEventListener('keydown',e=>{if(e.key==='Enter')$('searchBtn').click()});
$('searchInput').addEventListener('input',e=>{query=e.target.value.trim().toLowerCase();renderProducts()});
$('sortSelect').onchange=e=>{sort=e.target.value;renderProducts()};
$('menuBtn').onclick=()=>{$('mobileNav').style.display=$('mobileNav').style.display==='block'?'none':'block'};
$('newsletterForm').onsubmit=e=>{e.preventDefault();toast('Thanks! You are subscribed.');e.target.reset()};

let target=Date.now()+24*60*60*1000+36*60*1000;
function countdown(){
  let d=Math.max(0,target-Date.now()),days=Math.floor(d/86400000);d%=86400000;
  let h=Math.floor(d/3600000);d%=3600000;let m=Math.floor(d/60000);let s=Math.floor((d%60000)/1000);
  $('days').textContent=String(days).padStart(2,'0');$('hours').textContent=String(h).padStart(2,'0');$('mins').textContent=String(m).padStart(2,'0');$('secs').textContent=String(s).padStart(2,'0');
}
renderCategories();renderChips();renderProducts();updateCart();$('year').textContent=new Date().getFullYear();countdown();setInterval(countdown,1000);
</script>
</body>
</html>
