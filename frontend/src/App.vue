<script setup>
  import Header from "./components/Header.vue";
  import AppFooter from "./components/AppFooter.vue";
  
  
</script>

<template>
  <div id="app">
    <Header />
    <router-view />
    
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
