<script setup>
import { ref, computed, watch } from "vue";
import { useRoute, RouterLink } from "vue-router";

import { products } from "@/data/categories";
import "@/assets/styles/productDetail.css";

/* ---------------- ROUTE ---------------- */
const route = useRoute();

/* ---------------- PRODUCT STATE ---------------- */
const product = ref(null);
const selectedImage = ref("");

/* ---------------- LOAD PRODUCT ---------------- */
const loadProduct = (slug) => {
  const found = products.find(p => p.slug === slug) || null;
  product.value = found;
  selectedImage.value = found?.images[0] || "";
};

/* initial load */
loadProduct(route.params.slug);

/* watch route change */
watch(
  () => route.params.slug,
  (newSlug) => {
    loadProduct(newSlug);
    window.scrollTo({ top: 0, behavior: "smooth" });
  }
);

/* ---------------- RELATED PRODUCTS ---------------- */
const relatedProducts = computed(() => {
  if (!product.value) return [];

  return products
    .filter(
      p =>
        p.categorySlug === product.value.categorySlug &&
        p.slug !== product.value.slug
    )
    .slice(0, 12);
});
</script>


<template>
  <!-- PRODUCT FOUND -->
  <div v-if="product" class="pd-page container">

    <!-- TOP SECTION -->
    <div class="pd-grid">
      <div class="pd-left">

  <!-- MAIN IMAGE -->
  <img
    :src="selectedImage"
    class="pd-main-img"
  />

  <!-- THUMBNAILS -->
  <div class="pd-thumb-row">
    <img
      v-for="(img, i) in product.images"
      :key="i"
      :src="img"
      class="pd-thumb"
      :class="{ active: img === selectedImage }"
      @click="selectedImage = img"
    />
  </div>

</div>


      <div class="pd-right">
        <h1 class="pd-title">{{ product.name }}</h1>

        <div class="pd-price">
          <span class="pd-price-new">₹{{ product.price }}</span>
          <span class="pd-price-old">₹{{ product.mrp }}</span>
          <span class="pd-discount">
            ({{ product.discountPercent }}% OFF)
          </span>
        </div>

        <p class="pd-rating">⭐ {{ product.rating }} / 5</p>

        <p
          class="pd-stock"
          :class="{ out: product.stock === 0 }"
        >
          {{ product.stock > 0 ? "In Stock" : "Out of Stock" }}
        </p>

        <button
          class="pd-add-cart"
          :disabled="product.stock === 0"
        >
          ADD TO CART
        </button>
      </div>
    </div>

    <!-- DESCRIPTION -->
    <div class="pd-description">
      <h3>Description</h3>
      <p>{{ product.description }}</p>
    </div>

    <!-- RELATED PRODUCTS -->
    <div v-if="relatedProducts.length" class="pd-related-section">
      <div class="d-flex justify-content-between align-items-center mb-2">
        <h3>More from this category</h3>

        <RouterLink
          :to="`/category/${product.categorySlug}`"
          class="view-all"
        >
          View All
        </RouterLink>
      </div>

      <!-- item.css GRID -->
      <div class="product-grid">
        <RouterLink
          v-for="p in relatedProducts"
          :key="p.id"
          :to="`/product/${p.slug}`"
          class="product-card"
        >
          <span class="badge-discount">
            -{{ p.discountPercent }}%
          </span>

          <img :src="p.images[0]" class="product-img" />

          <h6 class="product-name">{{ p.name }}</h6>

          <p class="price">
            ₹{{ p.price }}
            <span class="old-price">₹{{ p.mrp }}</span>
          </p>

          <!-- stop navigation on button -->
          <button class="add-btn" @click.stop>
            <b class="add-name">ADD TO CART</b>
          </button>
        </RouterLink>
      </div>
    </div>
  </div>

  <!-- PRODUCT NOT FOUND -->
  <div v-else class="container">
    <h2>Product not found</h2>
  </div>
</template>
