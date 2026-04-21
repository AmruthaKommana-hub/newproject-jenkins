<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>Amrutha Collection | Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --bg-soft: #fafcff;
            --primary: #0f172a;
            --primary-dark: #020617;
            --accent: #f97316;
            --accent-light: #ffedd5;
            --accent-glow: #fb923c;
            --muted: #64748b;
            --card: #ffffff;
            --surface: #f8fafc;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --radius: 24px;
            --radius-md: 18px;
            --radius-sm: 14px;
            --container: 1280px;
            --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.02), 0 8px 10px -6px rgba(0, 0, 0, 0.01);
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 30px 40px -18px rgba(249, 115, 22, 0.2);
        }

        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            scroll-behavior: smooth;
            line-height: 1.5;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* glassmorphism header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(249, 115, 22, 0.1);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-weight: 800;
            font-size: 1.8rem;
            letter-spacing: -0.03em;
            background: linear-gradient(135deg, #0f172a 0%, #f97316 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand .accent-light {
            background: none;
            color: #f97316;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 20px;
            border-radius: 48px;
            font-weight: 600;
            transition: 0.2s;
            color: var(--primary);
        }

        nav.main-nav li a:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .search-wrapper {
            background: var(--surface);
            border-radius: 48px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            width: 280px;
            transition: all 0.2s;
            border: 1px solid transparent;
        }

        .search-wrapper:focus-within {
            border-color: var(--accent);
            background: white;
            box-shadow: 0 0 0 3px rgba(249, 115, 22, 0.2);
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            width: 100%;
            outline: none;
            font-weight: 500;
        }

        .header-actions {
            display: flex;
            gap: 14px;
            align-items: center;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.25rem;
            cursor: pointer;
            color: var(--primary);
            padding: 8px;
            border-radius: 50%;
            transition: 0.2s;
            width: 40px;
            height: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .icon-btn:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: white;
            font-size: 10px;
            font-weight: 800;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
        }

        /* hero modern */
        .hero-modern {
            background: linear-gradient(125deg, #fff9f5 0%, #fff3e8 100%);
            border-radius: 0 0 48px 48px;
            padding: 70px 0;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
        }

        .hero-text {
            flex: 1;
        }

        .hero-badge {
            background: var(--accent-light);
            color: var(--accent);
            display: inline-block;
            padding: 6px 14px;
            border-radius: 60px;
            font-size: 0.8rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero-text h1 {
            font-family: 'Space Grotesk', monospace;
            font-size: 3.6rem;
            font-weight: 800;
            line-height: 1.2;
            margin-bottom: 20px;
            background: linear-gradient(135deg, #0f172a, #f97316);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .hero-text p {
            color: var(--muted);
            max-width: 500px;
            margin-bottom: 32px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
            border: none;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
            box-shadow: 0 8px 20px rgba(249, 115, 22, 0.3);
        }

        .btn-primary:hover {
            background: #ea580c;
            transform: translateY(-3px);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--accent);
            color: var(--accent);
        }

        .hero-image {
            flex: 0.8;
            display: flex;
            justify-content: center;
        }

        .hero-image img {
            max-width: 100%;
            filter: drop-shadow(0 20px 30px rgba(0,0,0,0.1));
        }

        /* section titles */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-header h2 {
            font-family: 'Space Grotesk', monospace;
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 12px;
        }

        .section-header p {
            color: var(--muted);
        }

        /* categories grid new */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 28px;
        }

        .cat-card-new {
            background: var(--surface);
            border-radius: var(--radius-md);
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s ease;
            cursor: pointer;
            border: 1px solid rgba(249,115,22,0.05);
        }

        .cat-card-new:hover {
            transform: translateY(-6px);
            background: white;
            box-shadow: var(--shadow-md);
            border-color: var(--accent);
        }

        .cat-icon {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 16px;
        }

        /* products grid modern */
        .products-modern {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 32px;
        }

        .product-card {
            background: white;
            border-radius: var(--radius);
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0, 0, 1);
            border: 1px solid rgba(0,0,0,0.02);
            box-shadow: var(--shadow-sm);
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
        }

        .product-media {
            position: relative;
            overflow: hidden;
            background: #fef5ed;
        }

        .product-media img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .product-card:hover .product-media img {
            transform: scale(1.02);
        }

        .product-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent);
            color: white;
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.7rem;
            font-weight: 700;
        }

        .product-info {
            padding: 18px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
            margin-bottom: 6px;
        }

        .product-category {
            font-size: 0.75rem;
            color: var(--accent);
            font-weight: 600;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .price-wrap {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin: 12px 0;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.4rem;
            color: var(--primary);
        }

        .old-price-text {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 0.85rem;
        }

        .rating {
            color: #fbbf24;
            font-size: 0.8rem;
            margin-bottom: 14px;
        }

        .product-actions {
            display: flex;
            gap: 12px;
            margin-top: 8px;
        }

        .btn-add {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
        }

        .btn-add:hover {
            background: var(--accent);
        }

        .btn-wish {
            background: var(--surface);
            border: none;
            width: 42px;
            border-radius: 42px;
            cursor: pointer;
            transition: 0.2s;
        }

        /* deal section premium */
        .deal-premium {
            background: linear-gradient(115deg, #0f172a 0%, #1e293b 100%);
            border-radius: 40px;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
        }

        .deal-image {
            flex: 1.2;
            background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat;
            min-height: 320px;
        }

        .deal-content {
            flex: 1;
            padding: 44px 36px;
            color: white;
        }

        .deal-content h3 {
            font-size: 2rem;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .timer-modern {
            display: flex;
            gap: 18px;
            margin: 28px 0;
        }

        .time-segment {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(4px);
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
        }

        .time-number {
            font-size: 1.8rem;
            font-weight: 800;
            line-height: 1;
        }

        /* testimonials slider */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 28px;
        }

        .testimonial-card {
            background: var(--surface);
            border-radius: 28px;
            padding: 28px;
            transition: 0.2s;
        }

        /* newsletter */
        .newsletter-modern {
            background: linear-gradient(95deg, #f97316 0%, #ffedd5 100%);
            border-radius: 40px;
            padding: 52px 32px;
            text-align: center;
        }

        .newsletter-modern input {
            background: white;
            border: none;
            padding: 14px 22px;
            border-radius: 60px;
            width: 320px;
            max-width: 80%;
            margin-right: 12px;
        }

        footer {
            margin-top: 64px;
            background: var(--primary-dark);
            color: #94a3b8;
            padding: 48px 0 24px;
        }

        @media (max-width: 900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .hero-text h1 { font-size: 2.4rem; }
            .categories-grid { grid-template-columns: repeat(2,1fr); }
        }

        @media (max-width: 640px) {
            .hero-content { flex-direction: column; text-align: center; }
            .hero-text p { margin-left: auto; margin-right: auto; }
            .timer-modern { justify-content: center; }
            .deal-content { text-align: center; }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 16px;">
                <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">amrutha<span class="accent-light">.collection</span></a>
            </div>
            <nav class="main-nav">
                <ul>
                    <li><a href="#"><i class="fas fa-compass"></i> Discover</a></li>
                    <li><a href="#trending"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                    <li><a href="#"><i class="fas fa-gem"></i> Luxury</a></li>
                </ul>
            </nav>
            <div style="display: flex; align-items: center; gap: 20px;">
                <div class="search-wrapper">
                    <i class="fas fa-search" style="color: var(--accent);"></i>
                    <input type="text" id="searchInputGlobal" placeholder="Search products...">
                </div>
                <div class="header-actions">
                    <button class="icon-btn"><i class="far fa-user"></i></button>
                    <button class="icon-btn cart" id="cartIcon">
                        <i class="fas fa-bag-shopping"></i>
                        <span class="cart-count" id="cartCountBadge">0</span>
                    </button>
                </div>
            </div>
        </div>
        <div id="mobileMenuPanel" style="display: none; background: white; border-top: 1px solid #f0f0f0; padding: 16px 24px;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
                <li><a href="#">Discover</a></li>
                <li><a href="#trending">Trending</a></li>
                <li><a href="#deals">Flash Sale</a></li>
                <li><a href="#">Luxury</a></li>
            </ul>
        </div>
    </header>

    <main>
        <!-- Hero Section modern -->
        <section class="hero-modern">
            <div class="container hero-content">
                <div class="hero-text">
                    <div class="hero-badge"><i class="fas fa-star-of-life"></i> Limited edition drop</div>
                    <h1>Elevate your <br>everyday <span style="color:#f97316">style</span></h1>
                    <p>Discover curated fashion, cutting-edge gadgets, and timeless accessories — all with express delivery.</p>
                    <div class="btn-group">
                        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop collection</button>
                        <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-play"></i> Explore deals</button>
                    </div>
                </div>
                <div class="hero-image">
                    <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=600&q=80" alt="hero visual">
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="container" style="padding: 60px 0 40px;">
            <div class="section-header">
                <h2>Shop by category</h2>
                <p>Find exactly what you love</p>
            </div>
            <div class="categories-grid" id="categoriesContainer"></div>
        </section>

        <!-- Trending Products -->
        <section id="trending" class="container" style="padding: 20px 0 60px;">
            <div class="section-header">
                <h2>Trending now</h2>
                <p>Most loved by our community</p>
            </div>
            <div class="products-modern" id="productsContainer"></div>
        </section>

        <!-- Flash Sale deal -->
        <section id="deals" class="container" style="margin: 40px auto;">
            <div class="deal-premium">
                <div class="deal-image"></div>
                <div class="deal-content">
                    <h3>MacBook Air M2 <span style="color:#f97316">⚡ Flash deal</span></h3>
                    <p style="opacity: 0.8;">Next‑gen performance, all‑day battery life. Limited stock.</p>
                    <div class="timer-modern" id="timerRoot">
                        <div class="time-segment"><div class="time-number" id="dDays">0</div><div style="font-size:12px;">Days</div></div>
                        <div class="time-segment"><div class="time-number" id="hHours">00</div><div>Hours</div></div>
                        <div class="time-segment"><div class="time-number" id="mMins">00</div><div>Mins</div></div>
                        <div class="time-segment"><div class="time-number" id="sSecs">00</div><div>Secs</div></div>
                    </div>
                    <div style="display: flex; gap: 18px; align-items: baseline; flex-wrap: wrap; margin-bottom: 20px;">
                        <span style="font-size: 2rem; font-weight: 800;">$999</span>
                        <span style="text-decoration: line-through; opacity: 0.6;">$1,199</span>
                        <span style="background: #ef4444; padding: 6px 14px; border-radius: 60px; font-weight: bold;">-17% OFF</span>
                    </div>
                    <button class="btn btn-primary" id="flashDealBtn"><i class="fas fa-bolt"></i> Add to cart — save now</button>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="container" style="padding: 40px 0;">
            <div class="section-header"><h2>Kind words from customers</h2><p>Real stories, real style</p></div>
            <div class="testimonials-grid">
                <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Absolutely stunning quality and super fast shipping. Will order again!"</p><b>— Amara K.</b></div>
                <div class="testimonial-card"><div class="rating">★★★★☆</div><p>"The attention to detail is unmatched. My new favorite store."</p><b>— Rohan M.</b></div>
                <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Customer support solved my issue in minutes. 10/10 experience."</p><b>— Priya S.</b></div>
            </div>
        </section>

        <!-- Newsletter modern -->
        <section class="container" style="padding: 20px 0 60px;">
            <div class="newsletter-modern">
                <h3 style="font-size: 1.8rem; font-weight: 800; color:#0f172a;">Join the inner circle</h3>
                <p style="margin: 10px 0 20px; color:#334155;">Get early access to sales & exclusive edits</p>
                <form id="newsletterFormNew" onsubmit="return false;">
                    <input type="email" id="newsEmail" placeholder="Your email address" required>
                    <button class="btn btn-primary" type="submit" style="background:#0f172a; color:white;">Subscribe</button>
                </form>
                <div id="newsMsg" style="margin-top: 16px; font-size:14px; color:#0f172a; font-weight:500;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
            <div><span style="font-weight:800; font-size: 1.4rem;">amrutha.collection</span><p style="margin-top: 12px;">Modern essentials, timeless design.</p></div>
            <div><b>Explore</b><div style="margin-top: 8px;">New arrivals<br>Best sellers<br>Gift cards</div></div>
            <div><b>Support</b><div>FAQs<br>Returns<br>Contact</div></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 48px; font-size:13px;">© 2026 Amrutha Collection — All rights reserved</div>
    </footer>

    <script>
        // ---------- DATA ----------
        const CATEGORIES_NEW = [
            { id: 'wear', name: 'Fashion', icon: 'fa-vest' },
            { id: 'tech', name: 'Gadgets', icon: 'fa-microchip' },
            { id: 'luxe', name: 'Luxury', icon: 'fa-gem' },
            { id: 'home', name: 'Home living', icon: 'fa-couch' },
            { id: 'beauty', name: 'Beauty', icon: 'fa-spa' },
            { id: 'sport', name: 'Activewear', icon: 'fa-person-running' }
        ];
        const PRODUCTS_NEW = [
            { id: 101, title: "Minimalist Watch", price: 129, oldPrice: 189, rating: 5, reviews: 34, badge: "Sale", img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80", category: "Luxury" },
            { id: 102, title: "Wireless Headphones", price: 89, oldPrice: 149, rating: 4.5, reviews: 112, badge: "-40%", img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80", category: "Gadgets" },
            { id: 103, title: "Leather Backpack", price: 199, oldPrice: 279, rating: 5, reviews: 48, badge: "Eco", img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80", category: "Fashion" },
            { id: 104, title: "Smart Speaker", price: 79, rating: 4, reviews: 204, img: "https://images.unsplash.com/photo-1589003077984-894e133ddfab?auto=format&fit=crop&w=600&q=80", category: "Gadgets" },
            { id: 105, title: "Silk Scarf", price: 45, oldPrice: 68, rating: 4.8, reviews: 27, badge: "Limited", img: "https://images.unsplash.com/photo-1604342574432-3da4f6b8cae7?auto=format&fit=crop&w=600&q=80", category: "Luxury" },
            { id: 106, title: "Performance Sneakers", price: 119, rating: 4.7, reviews: 91, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80", category: "Activewear" }
        ];

        let cartItemsCount = 0;
        const cartSpan = document.getElementById('cartCountBadge');
        const productsGrid = document.getElementById('productsContainer');
        const categoriesGrid = document.getElementById('categoriesContainer');
        const searchField = document.getElementById('searchInputGlobal');

        function renderCategoriesUI() {
            categoriesGrid.innerHTML = '';
            CATEGORIES_NEW.forEach(cat => {
                const div = document.createElement('div');
                div.className = 'cat-card-new';
                div.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><p class="muted" style="font-size:12px; margin-top:4px;">Shop now →</p>`;
                div.addEventListener('click', () => {
                    searchField.value = cat.name;
                    filterProductsByName(cat.name);
                    document.getElementById('trending').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(div);
            });
        }

        function renderProducts(productsArray) {
            productsGrid.innerHTML = '';
            productsArray.forEach(p => {
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <div class="product-media">
                        ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                    </div>
                    <div class="product-info">
                        <div class="product-category">${p.category}</div>
                        <div class="product-title">${escapeHtml(p.title)}</div>
                        <div class="price-wrap">
                            <span class="current-price">$${p.price}</span>
                            ${p.oldPrice ? `<span class="old-price-text">$${p.oldPrice}</span>` : ''}
                        </div>
                        <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} (${p.reviews})</div>
                        <div class="product-actions">
                            <button class="btn-add" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to cart</button>
                            <button class="btn-wish"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                `;
                productsGrid.appendChild(card);
            });
            document.querySelectorAll('.btn-add').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.dataset.id);
                    addItemToCart(id);
                });
            });
        }

        function addItemToCart(pid) {
            const product = PRODUCTS_NEW.find(p => p.id === pid);
            if (!product) return;
            cartItemsCount++;
            cartSpan.innerText = cartItemsCount;
            const btn = document.querySelector(`.btn-add[data-id="${pid}"]`);
            if(btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added!';
                setTimeout(() => { btn.innerHTML = orig; }, 1200);
            }
        }

        function filterProductsByName(query) {
            const term = query.trim().toLowerCase();
            if(!term) { renderProducts(PRODUCTS_NEW); return; }
            const filtered = PRODUCTS_NEW.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
            renderProducts(filtered);
        }

        function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){ if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

        // deal countdown (2 days from now)
        function initDealTimer() {
            const targetTime = new Date().getTime() + (48 * 3600 * 1000);
            const timerInterval = setInterval(() => {
                const now = new Date().getTime();
                const diff = targetTime - now;
                if(diff <= 0) { clearInterval(timerInterval); document.getElementById('dDays').innerText = '0'; document.getElementById('hHours').innerText = '00'; document.getElementById('mMins').innerText = '00'; document.getElementById('sSecs').innerText = '00'; return; }
                const days = Math.floor(diff / (1000*60*60*24));
                const hours = Math.floor((diff % (86400000)) / (3600000));
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById('dDays').innerText = days;
                document.getElementById('hHours').innerText = hours < 10 ? '0'+hours : hours;
                document.getElementById('mMins').innerText = mins < 10 ? '0'+mins : mins;
                document.getElementById('sSecs').innerText = secs < 10 ? '0'+secs : secs;
            }, 1000);
        }

        // event handlers
        document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('trending').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('flashDealBtn').addEventListener('click', () => { cartItemsCount++; cartSpan.innerText = cartItemsCount; alert('🔥 MacBook M2 added to cart!'); });
        searchField.addEventListener('input', (e) => filterProductsByName(e.target.value));
        document.getElementById('mobileToggleBtn').addEventListener('click', () => { const menu = document.getElementById('mobileMenuPanel'); menu.style.display = menu.style.display === 'none' ? 'block' : 'none'; });
        document.getElementById('newsletterFormNew').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsEmail').value;
            const msgDiv = document.getElementById('newsMsg');
            if(!email.includes('@')) { msgDiv.innerHTML = '❌ Valid email required'; msgDiv.style.color='#b91c1c'; return; }
            msgDiv.innerHTML = '🎉 Thanks for subscribing! You’re in.'; msgDiv.style.color='#0f172a';
            document.getElementById('newsEmail').value = '';
            setTimeout(() => msgDiv.innerHTML = '', 3000);
        });

        renderCategoriesUI();
        renderProducts(PRODUCTS_NEW);
        initDealTimer();
        cartSpan.innerText = cartItemsCount;
    </script>
</body>
</html>
