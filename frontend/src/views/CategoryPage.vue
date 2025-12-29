<template>
  <div class="container page-wrapper">

    <h2 class="page-title">
      {{ categoryTitle || "Category Not Found" }}
    </h2>

    <p class="result-line" v-if="ProductList.length">
      showing {{ ProductList.lemgth }} products
    </p>

    <!-- Not Found -->

    <div v-if="!ProductList.lenght" class="no-result">
      No products available in this category
    </div>

    <!-- Product Grid -->
     <div class="product-grid" v-if="ProductList.length">

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
        name: `${currentCategory.value.name} Product ${i}`,
        price: 999,
        oldPrice: 1299,
        image: `https://picsum.photos/400?random-${slug.value}-${i}`
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
  )
</script>