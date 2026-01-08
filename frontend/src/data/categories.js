// ---------- CATEGORY LIST ----------
export const categories = [
  { name: 'Mobile Covers', slug: 'mobile-covers', products: 12 },
  { name: 'Chargers & Cables', slug: 'chargers-cables', products: 10 },
  { name: 'Power Banks', slug: 'power-banks', products: 15 },
  { name: 'Headphones', slug: 'headphones', products: 17 },
  { name: 'Smart Watches', slug: 'smart-watches', products: 16 },
  { name: 'Screen Protectors', slug: 'screen-protectors', products: 88 },
  { name: 'Wireless Chargers', slug: 'wireless-chargers', products: 9 },
  { name: 'Car Accessories', slug: 'car-accessories', products: 14 },
  { name: 'Audio Accessories', slug: 'audio-accessories', products: 11 },
  { name: 'Smart Home Devices', slug: 'smart-home-devices', products: 17 },
  { name: 'Gaming Accessories', slug: 'gaming-accessories', products: 13 },
  { name: 'Wearable Tech', slug: 'wearable-tech', products: 18 },
  { name: 'Fitness Trackers', slug: 'fitness-trackers', products: 15 },
  { name: 'Cameras & Drones', slug: 'cameras-drones', products: 16 },
  { name: 'Computer Accessories', slug: 'computer-accessories', products: 14 },
  { name: 'Networking Devices', slug: 'networking-devices', products: 13 },
  { name: 'TV & Home Entertainment', slug: 'tv-home-entertainment', products: 12 },
  { name: 'Office Electronics', slug: 'office-electronics', products: 11 },
  { name: 'Audio Equipment', slug: 'audio-equipment', products: 18 },
  { name: 'Virtual Reality Gear', slug: 'virtual-reality-gear', products: 19 },
  { name: 'Smart Lighting', slug: 'smart-lighting', products: 20 },
  { name: 'Health Tech', slug: 'health-tech', products: 21 },
  { name: 'Travel Accessories', slug: 'travel-accessories', products: 22 },
  { name: 'Photography Accessories', slug: 'photography-accessories', products: 23 },
]

// ---------- RANDOM HELPER ----------
function random(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min
}

// ---------- PRODUCT AUTO GENERATION ----------
export const products = []

let globalId = 1

categories.forEach((category) => {
  for (let i = 1; i <= category.products; i++) {
    products.push({
      id: globalId++,
      name: `${category.name} Product ${i}`,
      slug: `${category.slug}-product-${i}`,
      categorySlug: category.slug,

      price: random(99, 4999),
      mrp: random(199, 6999),

      discountPercent: random(5, 80),
      rating: (Math.random() * (5 - 3) + 3).toFixed(1),

      stock: random(0, 150),

      images: [`https://picsum.photos/seed/${category.slug}-product-${i}/400/400`],

      description: `Dummy description for ${category.name} product ${i} lorem100.`,
    })
  }
})
