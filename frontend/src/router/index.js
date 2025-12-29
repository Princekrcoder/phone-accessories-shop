import { createRouter, createWebHistory } from 'vue-router'
import Cart from '@/views/Cart.vue'
import Home from '@/views/Home.vue'
import CategoryPage from '@/views/CategoryPage.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/cart',
      name: 'Cart',
      component: Cart,
    },
    {
      path: '/',
      name: 'Home',
      component: Home,
    },
    {
      path: '/category/:slug',
      name: 'CategoryPage',
      component: CategoryPage,
    },
  ],
})

export default router
