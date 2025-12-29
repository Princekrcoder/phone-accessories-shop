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
import {
    name
} from "@vue/eslint-config-prettier/skip-formatting";

const categories = [{
        name: "Mobile Covers",
        slug: "mobile-covers",
        products: 12
    },
    {
        name: "Chargers & Cables",
        slug: "chargers-cables",
        products: 10
    },
    {
        name: "Power Banks",
        slug: "power-banks",
        products: 15
    },
    {
        name: "Headphones",
        slug: "headphones",
        products: 17
    },
    {
        name: "Smart Watches",
        slug: "smart-watches",
        products: 16
    },
    {
        name: "Screen Protectors",
        slug: "screen-protectors",
        products: 88
    },
    {
        name: "Wireless Chargers",
        slug: "wireless-chargers",
        products: 9
    },
    {
        name: "Car Accessories",
        slug: "car-accessories",
        products: 14
    },
    {
        name: "Audio Accessories",
        slug: "audio-accessories",
        products: 11
    },
    {
        name: "Smart Home Devices",
        slug: "smart-home-devices",
        products: 17
    },
    {
        name: "Gaming Accessories",
        slug: "gaming-accessories",
        products: 13
    },
    {
        name: "Wearable Tech",
        slug: "wearable-tech",
        products: 18
    },
    {
        name: "Fitness Trackers",
        slug: "fitness-trackers",
        products: 15
    },
    {
        name: "Cameras & Drones",
        slug: "cameras-drones",
        products: 16
    },
    {
        name: "Computer Accessories",
        slug: "computer-accessories",
        products: 14
    },
    {
        name: "Networking Devices",
        slug: "networking-devices",
        products: 13
    },
    {
        name: "TV & Home Entertainment",
        slug: "tv-home-entertainment",
        products: 12
    },
    {
        name: "Office Electronics",
        slug: "office-electronics",
        products: 11
    },
    {
        name: "Audio Equipment",
        slug: "audio-equipment",
        products: 18
    },
    {
        name: "Virtual Reality Gear",
        slug: "virtual-reality-gear",
        products: 19
    },
    {
        name: "Smart Lighting",
        slug: "smart-lighting",
        products: 20
    },
    {
        name: "Health Tech",
        slug: "health-tech",
        products: 21
    },
    {
        name: "Travel Accessories",
        slug: "travel-accessories",
        products: 22
    },
    {
        name: "Photography Accessories",
        slug: "photography-accessories",
        products: 23
    }
]
</script>
