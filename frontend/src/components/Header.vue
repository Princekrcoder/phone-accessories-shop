<script setup>
import { ref } from "vue";

const isMenuOpen = ref(false);

const openMenu = () => {
  isMenuOpen.value = true;
  document.body.style.overflow = "hidden";
};

const closeMenu = () => {
  isMenuOpen.value = false;
  document.body.style.overflow = "";
};
</script>

<template>
  <!-- HEADER -->
  <header class="header">
    <button class="menu-btn" @click="openMenu">☰</button>

    <div class="logo">Zapvi</div>

    <button class="cart-btn">🛒</button>
  </header>

  <!-- OVERLAY -->
  <div
    class="overlay"
    v-if="isMenuOpen"
    @click="closeMenu"
  ></div>

  <!-- SIDE MENU -->
  <aside :class="['side-menu', { open: isMenuOpen }]">
    <button class="close-btn" @click="closeMenu">✕</button>

    <ul>
      <li>MOBILE COVER</li>
      <li>OFFER</li>
      <li>SNAP CASE</li>
      <li>CLEARPRINT CASE <span class="badge">NEW</span></li>
      <li>POWERBANK</li>
      <li>ACRYLIC WALL ART</li>
      <li>PLAIN T-SHIRTS</li>
      <li>TRACK YOUR ORDER</li>
    </ul>
  </aside>
</template>
