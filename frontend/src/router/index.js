import { createRouter, createWebHistory } from 'vue-router'
import Cart from '@/views/Cart.vue'
import Home from '@/views/Home.vue'


const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/cart',
      name: 'Cart',
      component: Cart
    },
    
  ],
})

export default router
