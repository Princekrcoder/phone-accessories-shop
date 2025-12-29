<template>
  <div class="container page-wrapper">

    <h2 class="page-title">
      {{ categoryTitle || "Category Not Found" }}
    </h2>

    <p class="result-line" v-if="products.length">
      Showing {{ products.length }} products
    </p>

    <!-- not found -->
    <div v-if="!products.length" class="no-result">
      No products available in this category
    </div>

    <!-- PRODUCT GRID -->
    <div class="product-grid" v-if="products.length">
      <div
        v-for="(p, i) in products"
        :key="i"
        class="product-card"
      >
        <span class="badge-discount">-20%</span>

        <img
          :src="`https://picsum.photos/400?cat-${slug}-${i}`"
          class="product-img"
        />

        <h6 class="product-name">
          {{ categoryTitle }} Product {{ i + 1 }}
        </h6>

        <p class="price">
          ₹999
          <span class="old-price">₹1299</span>
        </p>

        <button class="add-btn">
          ADD TO CART
        </button>
      </div>
    </div>

  </div>
</template>

<script setup>
import { ref, computed } from "vue";
import { useRoute } from "vue-router";

// all categories from homepage list (reuse)
const allCategories = [
  { name: "Mobile Covers", slug: "mobile-covers", products: 12 },
  { name: "Chargers & Cables", slug: "chargers-cables", products: 10 },
  { name: "Power Banks", slug: "power-banks", products: 15 },
  { name: "Headphones", slug: "headphones", products: 17 },
  { name: "Smart Watches", slug: "smart-watches", products: 16 },
  { name: "Screen Protectors", slug: "screen-protectors", products: 88 },
  { name: "Wireless Chargers", slug: "wireless-chargers", products: 9 },
  { name: "Car Accessories", slug: "car-accessories", products: 14 },
  { name: "Audio Accessories", slug: "audio-accessories", products: 11 },
  { name: "Smart Home Devices", slug: "smart-home-devices", products: 17 },
  { name: "Gaming Accessories", slug: "gaming-accessories", products: 13 },
  { name: "Wearable Tech", slug: "wearable-tech", products: 18 },
  { name: "Fitness Trackers", slug: "fitness-trackers", products: 15 },
  { name: "Cameras & Drones", slug: "cameras-drones", products: 16 },
  { name: "Computer Accessories", slug: "computer-accessories", products: 14 },
  { name: "Networking Devices", slug: "networking-devices", products: 13 },
  { name: "TV & Home Entertainment", slug: "tv-home-entertainment", products: 12 },
  { name: "Office Electronics", slug: "office-electronics", products: 11 },
  { name: "Audio Equipment", slug: "audio-equipment", products: 18 },
  { name: "Virtual Reality Gear", slug: "virtual-reality-gear", products: 19 },
  { name: "Smart Lighting", slug: "smart-lighting", products: 20 },
  { name: "Health Tech", slug: "health-tech", products: 21 },
  { name: "Travel Accessories", slug: "travel-accessories", products: 22 },
  { name: "Photography Accessories", slug: "photography-accessories", products: 23 }
];

const route = useRoute();
const slug = route.params.slug;

// find category based on slug
const currentCategory = allCategories.find(c => c.slug === slug);

// title for top heading
const categoryTitle = currentCategory ? currentCategory.name : "";

// dummy product count based on category products number
const products = ref([]);

if (currentCategory) {
  for (let i = 0; i < currentCategory.products; i++) {
    products.value.push({
      id: i + 1,
      name: `${categoryTitle} Product ${i + 1}`
    });
}
}
</script>

<style scoped>
.no-result {
  text-align: center;
  margin-top: 40px;
  color: gray;
}
</style>
