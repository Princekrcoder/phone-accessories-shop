<template>
<footer class="footer">
    <div class="footer-container">

        <!-- POPULAR SEARCHES -->
        <div class="popular-searches">
            <span class="section-title">
                <strong>POPULAR SEARCHES</strong>
            </span>

            <p class="dis">
                Apple iPhone 12 Back Cover | Apple iPhone 13 Back Cover |
                Apple iPhone 14 Back Cover | Apple Iphone 15 Back Cover |
                Apple iPhone 12 Pro Back Cover | Apple iPhone 14 Plus Back Cover |
                Apple iPhone 13 Pro Max Back Cover | Apple Iphone 15 Pro Max Back Cover |
                OnePlus 10 Pro (5G) Back Cover | OnePlus 11R (5G) Back Cover |
                OnePlus 11 (5G) Back Cover | OnePlus 10R (5G) Back Cover |
                Samsung Galaxy S23 (5G) Back Cover | Samsung Galaxy S23 Plus (5G) Back Cover |
                Samsung Galaxy S22 (5G) Back Cover | Samsung Galaxy S21 (5G) Back Cover |
                Samsung Galaxy S21 Ultra Back Cover
            </p>
        </div>

        <!-- FOOTER MAIN -->
        <div class="footer-grid">
            <div>
                <h5>Company</h5>
                <div class="is-divider"> </div>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Payments & Returns</a></li>
                    <li><a href="#">Printing Terms & Cancellation Policy</a></li>
                </ul>
            </div>

            <div>
                <h5>Contact Us</h5>
                <div class="is-divider small"></div>
                <p><strong>Email:</strong> help@zapvi.in</p>
                <p>Guaranteed Response Time<br />Within 24–48 Hours</p>
                <p><strong>Working Days:</strong><br />Mon – Sat / 9:30AM – 6:30PM</p>
            </div>

            <div>
                <h5>Customer Service</h5>
                <div class="is-divider small"></div>
                <ul>
                    <li><a href="#">Track Your Order</a></li>
                    <li><a href="#">Download Invoice</a></li>
                </ul>
            </div>

            <div>
                <h5>Registered Warehouse Address</h5>
                <div class="is-divider"></div>
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
        <!-- logo is currently disabled
       <div id="logo-row">
        <img v-for="(logo, index) in logos" :key="index" :src="logo" alt="logo">
      </div> -->

    </div>
</footer>
</template>

<script>
// Importing logos is currently disabled
// import logo1 from "@/assets/logo/logo1.png";

// import logo2 from "@/assets/logo/logo2.png";
// import logo3 from "@/assets/logo/logo3.png";
// import logo4 from "@/assets/logo/logo4.png";

// const logos = [logo1, logo2, logo3, logo4];

const popularSearches = [{
        name: "Apple iPhone 12 Back Cover",
        link: "#"
    },
    {
        name: "Apple iPhone 13 Back Cover",
        link: "#"
    },
    {
        name: "Apple iPhone 14 Back Cover",
        link: "#"
    },
    {
        name: "Apple iPhone 15 Back Cover",
        link: "#"
    },
    {
        name: "OnePlus 11 (5G) Back Cover",
        link: "#"
    },
    {
        name: "Samsung Galaxy S23 Back Cover",
        link: "#"
    }
];
</script>

<style>
@import "@/assets/styles/footer.css";
</style>
