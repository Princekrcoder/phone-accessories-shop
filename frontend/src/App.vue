<script setup>
  import AppFooter from "./components/AppFooter.vue";
  import Home from "./views/Home.vue";
  import Navbar from "./components/Navbar.vue";
</script>

<template>
  <div id="app">
    <Navbar />
    <Home />
    <AppFooter />
    
  </div>
</template>

<style >
.app {
  margin: 0;
}
</style>
