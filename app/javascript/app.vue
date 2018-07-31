<template lang="html">
  <div class="">
    <p>{{ name }}</p>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data: function () {
    return {
      name: "Saul Emmanuel Espinoza Lopez"
    }
  }
}
</script>

<style lang="css">
p {
  background-color: rgb(0, 129, 170);
  border-color: rgb(0, 48, 79);
  color: white;
  align-items: center;
  text-align: center;
  border-radius: 20px;
}
</style>
