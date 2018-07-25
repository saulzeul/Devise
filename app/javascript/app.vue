<template>
  <div id="app">
    <ul v-for="(product, productIndex) in products" :key="productIndex">
      <li>{{ product.status }}</li>
      <li>{{ product.inventory_id }}</li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data: function () {
    return {
      products: [ ]
    }
  },
  mounted () {
    axios.get('http://localhost:4000/api/kindles.json').then(response => (this.products = response.data.models))
  }
}
</script>

<style scoped>
p, h2 {
  font-size: 2em;
  text-align: center;
}
</style>
