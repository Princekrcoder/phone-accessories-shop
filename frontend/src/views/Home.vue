<template>
<div class="home">
    <!-- Banner -->
    <section class="banner d-flex align-items-center text-center text-white">
        <div class="container">
            <h1>Big Sale is Live</h1>
            <p>Up to 60% OFF on top brands</p>
            <button class="btn btn-light">Shop Now</button>
        </div>
    </section>

    <!-- Categories -->
    <div class="container my-5">
        <h3 class="mb-3">Shop by Category</h3>

        <div class="row g-4">
            <div class="col-6 col-md-3" v-for="n in 4" :key="n">
                <div class="cat-box">
                    <img :src="`https://picsum.photos/200?category-${n}`" />
                    <p>Category {{ n }}</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Product List -->
    <div class="container my-4">
        <h3 class="mb-3">Latest Products</h3>

        <!-- your responsive CSS grid -->
        <div class="product-grid">
            <div v-for="n in 8" :key="n" class="product-card">

                <span class="badge-discount">-20%</span>

                <img :src="`https://picsum.photos/500?product-${n}`" class="product-img" />

                <h6 class="product-name">
                    Product {{ n }}
                </h6>

                <p class="price">
                    ₹999
                    <span class="old-price">₹1299</span>
                </p>

                <button class="add-btn">
                    <b class="add-name">ADD TO CART</b>
                </button>
                

            </div>
        </div>
    </div>

    
</div>
</template>

<script>
import {
    RouterLink
} from "vue-router";
import "@/assets/styles/home.css";
import "@/assets/styles/item.css";
</script>
