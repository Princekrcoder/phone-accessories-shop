<script setup>

</script>

<template>
<div class="header-wrapper">

    <!-- TOP ANNOUNCEMENT BAR -->
    <div class="top-bar">
        <div class="top-bar-content">
            <b>Hurry! Add More to Unlock Free Delivery — Ends Today!</b>
            <div class="top-links">
                <a href="#">Contact Us</a>
                <span>|</span>
                <a href="#">FAQs</a>
            </div>
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
            <a href="#"><b>MOBILE COVER</b></a>
            <a href="#"><b>MORE</b></a>
            <a href="#"><b>OFFER</b><sup class="badge">NEW</sup></a>
        </nav>

        <!-- SEARCH + CART -->
        <div class="header-actions">
            <div class="search-box">
                <input type="text" placeholder="Search..." />
                <span class="search-icon">🔍</span>
            </div>
            <button class="cart-btn">
                ₹23.00<i class="bi bi-bag-fill"></i>
            </button>
        </div>

        <button class="user">
            <i class="bi bi-person-circle" style=" font-size: 36px;"></i>
        </button>
    </header>

</div>
</template>

<style>
@import "@/assets/styles/Header.css";
</style>
