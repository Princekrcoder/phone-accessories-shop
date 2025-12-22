<script setup>
import { ref, onMounted } from "vue";

const cartIcon = ref(null);
const isMenuOpen = ref(false);

const openMenu = () => {
  isMenuOpen.value = true;
  document.body.style.overflow = "hidden";
};

const closeMenu = () => {
  isMenuOpen.value = false;
  document.body.style.overflow = "";
};

onMounted(() => {
  if (window.OnlineWebFonts_Com && window.__Animations && cartIcon.value) {
    window.OnlineWebFonts_Com({
      Id: cartIcon.value,
      Data: window.__Animations["2599"],
    }).Play();
  }
});
</script>


<template>
<div class="header-wrapper">
    <!-- TOP ANNOUNCEMENT BAR -->
    <div class="top-bar">
        <p>Hurry! Add More to Unlock Free Delivery — Ends Today!</p>
        <div class="top-links">
            <a href="#">Contact Us</a>
            <span>|</span>
            <a href="#">FAQs</a>
        </div>
    </div>

    <!-- MAIN HEADER -->
    <header class="main-header">
        <!-- LOGO -->
        <div class="logo">
            Zapvi
            <span class="bolt">⚡</span>
        </div>

        <!-- NAV -->
        <nav class="nav-links">
            <a href="#">MOBILE COVER</a>
            <a href="#">MORE</a>
            <a href="#">OFFER <span class="badge">NEW</span></a>
        </nav>

        <!-- SEARCH + CART -->
        <div class="header-actions">
            <div class="search-box">
                <input type="text" placeholder="Search..." />
                <span class="search-icon">🔍</span>
            </div>

            <button class="user">
                <div ref="cartIcon" class="cart-icon"></div>
            </button>

            <font-awesome-icon icon="user" />

            
            
            <button class="cart-btn">
                <font-awesome-icon icon="fa-solid fa-user" />
            </button>
        </div>
    </header>
</div>
</template>

<style>
@import "@/assets/styles/Header.css";
</style>
