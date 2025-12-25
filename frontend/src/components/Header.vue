<script>
import {
    RouterLink
} from 'vue-router';

import "@/assets/image/laxman-logo.png";
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
            <img src="@/" alt="">
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
                <button class="search-icon">
                  <i class="bi bi-search search-icon" style="font-weight: bold;"></i>
                </button>
            </div>
            <RouterLink to="/cart" class="cart-btn">
                ₹2300000.00
                <i class="bi bi-bag-fill cart-icon" />
            </RouterLink>

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
