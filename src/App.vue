<template>
  <ul id="app">
    <li v-for="item in users" :key="item.id">
      {{item.name}}
    </li>
  </ul>
</template>
<script>
import axios from 'axios';
export default {
  name:'app',
  data(){
    return {
      users:[]
    }
  },
  mounted(){
    axios.get('http://localhost:3000/api/users').then((res)=>{
      this.users = res.data
    })
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
