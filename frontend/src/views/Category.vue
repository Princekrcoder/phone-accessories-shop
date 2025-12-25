<template>
    <div class="category-page">
        <!-- Top Button -->
         <div class="top-button">
            <h3>
                <b></b>
                <span>Explore Our Categories</span>
                <b></b>
            </h3>

            <!-- category-grid -->
             <div class="category-grid">
                <div class="category-card"
                v-for="c in categories"
                :key="c.id"
                >

                </div>
             </div>
         </div>
    </div>
</template>

<script setup>
const categories = [
    { id: 1, name: 'Mobile Covers',  },
    { id: 2, name: 'Screen Protectors' },
    { id: 3, name: 'Chargers' },
    { id: 4, name: 'Headphones' },
    { id: 5, name: 'Power Banks' },
    { id: 6, name: 'Cables' },
];
</script>