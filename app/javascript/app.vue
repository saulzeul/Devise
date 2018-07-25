<template>
  <div id="app">
<<<<<<< HEAD
    <ul v-for="(product, productIndex) in products" :key="productIndex">
      <li>{{ product.status }}</li>
      <li>{{ product.inventory_id }}</li>
    </ul>
=======
    <p>{{ message }}</p>
    <pre> {{ $data }}</pre>
>>>>>>> parent of 4554aa7... Vue resource works!
  </div>
</template>

<script>
<<<<<<< HEAD
import axios from 'axios';
export default {
  data: function () {
    return {
      products: [ ]
    }
  },
  mounted () {
    axios.get('http://localhost:4000/api/kindles.json').then(response => (this.products = response.data.models))
=======
export default {
  data: function () {
    return {
      message: "Consumiendo API Vue ",
      products: []
    }
  },
    mounted() {
    axios.get("http://localhost:4000/api/kindles.json").then(response => {
      this.products = response.data
    })
>>>>>>> parent of 4554aa7... Vue resource works!
  }
}
</script>

<style scoped>
p, h2 {
  font-size: 2em;
  text-align: center;
}
</style>
