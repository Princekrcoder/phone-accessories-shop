<template>
  <div class="cart-page">

    <!-- Breadcrumb -->
    <div class="breadcrumb">
      <h2>SHOPPING CART</h2>
      <h1><i class="bi bi-chevron-right"></i></h1>
      <h2>CHECKOUT DETAILS</h2>
      <h2><i class="bi bi-chevron-right"></i></h2>
      <h2 class="active">ORDER COMPLETE</h2>
    </div>

    <div class="cart-container">

      <!-- LEFT: Cart Items -->
      <div class="cart-left">

        <!-- Free Shipping Bar -->
        <div class="shipping-bar">
          <p>Add ₹72.00 to cart and get free shipping!</p>
          <div class="progress">
            <span></span>
          </div>
        </div>

        <!-- Table Header -->
        <div class="cart-header">
          <span>PRODUCT</span>
          <span>PRICE</span>
          <span>QUANTITY</span>
          <span>SUBTOTAL</span>
        </div>

        <!-- Cart Item -->
        <div class="cart-item">
          <img src="https://via.placeholder.com/70" />
          <div class="item-info">
            <p>Type-C to Lightning Charging Cable</p>
          </div>
          <span>₹399.00</span>
          <div class="qty">
            <button>-</button>
            <span>1</span>
            <button>+</button>
          </div>
          <span>₹399.00</span>
        </div>

        <div class="cart-item">
          <img src="https://via.placeholder.com/70" />
          <div class="item-info">
            <p>3 Color Glimp Snap Case</p>
            <small>Apple iPhone 16 Plus</small>
          </div>
          <span>₹399.00</span>
          <div class="qty">
            <button>-</button>
            <span>1</span>
            <button>+</button>
          </div>
          <span>₹399.00</span>
        </div>

        <div class="cart-item">
          <img src="https://via.placeholder.com/70" />
          <div class="item-info">
            <p>Spiral Cable Protector</p>
          </div>
          <span>₹29.00</span>
          <div class="qty">
            <button>-</button>
            <span>1</span>
            <button>+</button>
          </div>
          <span>₹29.00</span>
        </div>

        <router-link to="/" class="continue-btn btn btn-primary btn-sm" type="button" >← CONTINUE SHOPPING</router-link>
      </div>

      <!-- RIGHT: Cart Total -->
      <div class="cart-right">
        <h3>CART TOTALS</h3>

        <div class="total-row">
          <span>Subtotal</span>
          <span>₹227.00</span>
        </div>

        <div class="total-row">
          <span>Shipping</span>
          <span>Flat rate: ₹60.00</span>
        </div>

        <div class="total-row bold">
          <span>Total</span>
          <span>₹287.00</span>
        </div>

        <button class="checkout-btn">PROCEED TO CHECKOUT</button>

        <div class="coupon">
          <input type="text" placeholder="Coupon code" />
          <button>Apply coupon</button>
        </div>
      </div>

    </div>
  </div>
</template>

<script setup>
/* abhi static page hai */
</script>

<!-- CSS import -->
<style scoped>
@import "@/assets/styles/cart.css";
</style>
