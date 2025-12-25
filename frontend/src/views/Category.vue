<template>
  <div class="category-page">

    <!-- Top Button -->
    <div class="top-btn">
      <button>EXPLORE OUR CATEGORIES</button>
    </div>

    <!-- Category Grid -->
    <div class="category-grid">

      <div
        class="category-card"
        v-for="c in categories"
        :key="c.id"
      >
        <img :src="c.image" />

        <div class="overlay"></div>

        <h3 class="cat-title">{{ c.name }}</h3>

      </div>

    </div>

    <!-- SEO Section -->
    <div class="seo-section">
      <h2>Customized Mobile Cover</h2>

      <p>
        Customized Mobile Covers India: Zapvi is the most beneficial customized mobile cover printing online store at which it is easy to design custom phone cases with maximum photo printing place.
      </p>

      <p>
        Purchase customized mobile covers online, that's the most recent trend from India…
      </p>
    </div>

  </div>
</template>

<script setup>
const categories = [
  { id: 1, name: "Mobile Cover", image: "https://picsum.photos/400?1" },
  { id: 2, name: "Snap Case", image: "https://picsum.photos/400?2" },
  { id: 3, name: "Clear Print Case", image: "https://picsum.photos/400?3" },
  { id: 4, name: "Soft Silicone Case", image: "https://picsum.photos/400?4" },
  { id: 5, name: "Glossy TPU Case", image: "https://picsum.photos/400?5" },
  { id: 6, name: "Acrylic Wall Art", image: "https://picsum.photos/400?6" },
  { id: 7, name: "Canvas", image: "https://picsum.photos/400?7" },
  { id: 8, name: "Keychain", image: "https://picsum.photos/400?8" },
  { id: 9, name: "Just Arrived", image: "https://picsum.photos/400?9" },
  { id: 10, name: "Phone Grip", image: "https://picsum.photos/400?10" },
  { id: 11, name: "Custom Mug", image: "https://picsum.photos/400?11" },
  { id: 12, name: "Mousepad", image: "https://picsum.photos/400?12" },
  { id: 13, name: "Perfume", image: "https://picsum.photos/400?13" },
  { id: 14, name: "Mens T-Shirts", image: "https://picsum.photos/400?14" },
  { id: 15, name: "Coasters", image: "https://picsum.photos/400?15" },
];
</script>

<style scoped>
@import "@/assets/css/category.css";
</style>
