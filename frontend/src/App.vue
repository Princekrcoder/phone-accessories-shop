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
#app {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}
</style>
