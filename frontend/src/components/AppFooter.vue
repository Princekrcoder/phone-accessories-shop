<template>
  <footer class="footer">
    <!-- POPULAR SEARCHES -->
    <div class="popular-searches">
      <span class="section-title">
        <strong>POPULAR SEARCHES</strong>
    </span>
      <p class="dis">
        Apple iPhone 12 Back Cover | Apple iPhone 13 Back Cover | Apple iPhone 14 Back Cover | Apple Iphone 15 Back Cover | Apple iPhone 12 Pro Back Cover | Apple iPhone 14 Plus Back Cover | Apple iPhone 13 Pro Max Back Cover | Apple Iphone 15 Pro Max Back Cover | OnePlus 10 Pro (5G) Back Cover | OnePlus 11R (5G) Back Cover | OnePlus 11 (5G) Back Cover | OnePlus 10R (5G) Back Cover | Samsung Galaxy S23 (5G) Back Cover | Samsung Galaxy S23 Plus (5G) Back Cover | Samsung Galaxy S22 (5G) Back Cover | Samsung Galaxy S21 (5G) Back Cover | Samsung Galaxy S21 Ultra Back Cover
      </p>
    </div>

    <!-- FOOTER MAIN -->
    <div class="footer-grid">
      <!-- COMPANY -->
      <div class="col1">
        <h5>Company</h5>
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Terms & Conditions</a></li>
          <li><a href="#">Payments & Returns</a></li>
          <li><a href="#">Printing Terms & Cancellation Policy</a></li>
        </ul>
      </div>

      <!-- CONTACT -->
      <div>
        <h5>Contact Us</h5>
        <p><strong>Email:</strong> help@zapvi.in</p>
        <p>Guaranteed Response Time<br />Within 24–48 Hours</p>
        <p><strong>Working Days:</strong><br />Mon – Sat / 9:30AM – 6:30PM</p>
      </div>

      <!-- CUSTOMER SERVICE -->
      <div>
        <h5>Customer Service</h5>
        <ul>
          <li><a href="#">Track Your Order</a></li>
          <li><a href="#">Download Invoice</a></li>
        </ul>
      </div>

      <!-- ADDRESS -->
      <div>
        <h5>Registered Warehouse Address</h5>
        <p>
          23–24 4th Floor Girivar Industrial Park,<br />
          Saniya Hemad Village, Near Saroli,<br />
          Surat–Kadodara Road, Surat,<br />
          Gujarat – 395006
        </p>

        <div class="social-icons">
          <a href="#">Fb</a>
          <a href="#">Ig</a>
          <a href="#">Tw</a>
          <a href="#">Ln</a>
          <a href="#">Yt</a>
        </div>
      </div>
    </div>

    <!-- BOTTOM BAR -->
    <div class="footer-bottom">
      <p>Copyright © 2025 <strong>Zapvi.in</strong> • Made with ❤️ in India</p>
    </div>
  </footer>
</template>

<script setup>
const popularSearches = [
  { name: "Apple iPhone 12 Back Cover", link: "#" },
  { name: "Apple iPhone 13 Back Cover", link: "#" },
  { name: "Apple iPhone 14 Back Cover", link: "#" },
  { name: "Apple iPhone 15 Back Cover", link: "#" },
  { name: "OnePlus 11 (5G) Back Cover", link: "#" },
  { name: "Samsung Galaxy S23 Back Cover", link: "#" }
];
</script>

<style scoped>

.dis {
    font-size: 13px;
    color: #ccc;
    line-height: 1.6;
    max-width: 800px;
    margin-top: 8px;
}

.section-title {
    position: relative;
  display: inline-block;
  
}

.section-title::after {
    
      background: url('../assets/image/underline.png') 50% top no-repeat;
    background-size: 100% 9px;
    border-radius: 999px;
    color: green;
    content: "";
    height: 9px;
    image-rendering: -webkit-optimize-contrast;
    left: 0;
    position: absolute;
    right: 0;
    top: 100%;
    
  


}

.footer {
  background: #000;
  color: #fff;
  padding: 40px 20px 20px;
  font-family: Arial, sans-serif;
  margin: 0;
}

/* Popular Searches */
.popular-searches h4 {
  font-size: 14px;
  margin-bottom: 10px;
}

.popular-searches a {
  color: #ccc;
  font-size: 13px;
  text-decoration: none;
}

.popular-searches a:hover {
  color: #fff;
}

/* Grid */
.footer-grid {
  display: flex;
   /* auto spacing */
  flex-wrap: wrap;               /* responsive support */
  
  margin-top: 40px;
}

/* har box */
.footer-grid > div {
  flex: 1 1 220px;   /* auto width, minimum size */
}

/* headings */
.footer-grid h5 {
  font-size: 15px;
  margin-bottom: 12px;
  border-bottom: 2px solid #444;
  display: inline-block;
  padding-bottom: 5px;
}

/* list reset */
.footer-grid ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-grid li {
  margin-bottom: 8px;
}

.footer-grid a {
  color: #ccc;
  font-size: 14px;
  text-decoration: none;
}

.footer-grid a:hover {
  color: #fff;
}


/* Social Icons */
.social-icons {
  margin-top: 10px;
}

.social-icons a {
  display: inline-block;
  margin-right: 8px;
  border: 1px solid #555;
  padding: 6px 8px;
  border-radius: 50%;
  color: #fff;
  font-size: 12px;
  text-decoration: none;
}

/* Bottom */
.footer-bottom {
  border-top: 1px solid #222;
  margin-top: 30px;
  padding-top: 15px;
  text-align: center;
  font-size: 13px;
  color: #aaa;
}

/* Responsive */
@media (max-width: 900px) {
  .footer-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 500px) {
  .footer-grid {
    grid-template-columns: 1fr;
  }
}
</style>
