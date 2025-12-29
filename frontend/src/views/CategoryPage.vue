<template>
  <div class="container page-wrapper">

    <h2 class="page-title">
      {{ categoryTitle || "Category Not Found" }}
    </h2>

    <p class="result-line" v-if="products.length">
      Showing {{ products.length }} products
    </p>

    <!-- Not Found -->
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
          {{ p.name }}
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

  import { ref, watch} from "vue";
  import { useRoute } from "vue-router";

  import { categories } from "@/data/categories";

  const route = useRoute();
  const slug = ref(route.params.slug);

  // selected category object
  const currentCategory = ref(null);

  // category title
  const categoryTitle = ref("");

  // products list for the category
  const ProductList = ref([]);

  // function to load category data based on slug
  const loadCatrgory = () => {
    currentCategory.value = categories.find(c => c.slug === slug.value);

    ProductList.value = [];

    if(!currentCategory.value) {
      categoryTitle.value = "";
      return;
    }

    categoryTitle.value = currentCategory.value.name;

    for(let i = 1; i <= currentCategory.value.products; i++) {
      ProductList.value.push({
        id: i,
        name: `${currentCategory.value.name} Product ${i}`
      });
    }
  };

  loadCatrgory();

  watch(
    () => route.params.slug,
    (newSlug) => {
      slug.value = newSlug;
      loadCatrgory();
    }
  );
</script>