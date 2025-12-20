<template>
  <nav class="navbar">
    <h2>📱 Phone Accessories</h2>
    <ul>
      <li>Home</li>
      <li>Products</li>
      <li>Cart</li>
      <li>Login</li>
    </ul>
  </nav>
</template>

<style scoped>
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px;
  background: #111;
  color: #fff;
}
ul {
  display: flex;
  list-style: none;
  gap: 15px;
}
li {
  cursor: pointer;
}
</style>
