<template>
  <div id="app">
    <p>{{ message }}</p>
    <pre> {{ $data }}</pre>
  </div>
</template>

<script>
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
  }
}
</script>

<style scoped>
p, h2 {
  font-size: 2em;
  text-align: center;
}
</style>
