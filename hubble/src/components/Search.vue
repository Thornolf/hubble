<template>
  <div class="search">
    <h2>Type In Your Search Term</h2>
    <form v-on:submit.prevent="getIotd()">
      <input type="text" placeholder="Get image of the day" />
    </form>
    <div class="iotd" v-if="iotd">
      <img v-bind:src="iotd.href" />
    </div>

    <form v-on:submit.prevent="getResult(query)">
      <input type="text" placeholder="Type in your search" v-model="query" />
    </form>
    <div class="results" v-if="results">

      <div v-for="result in results">
          <img v-bind:src="result.links[0].href" />
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  name: 'search',
  data () {
    return {
      msg: 'Search',
      query: '',
      results: '',
      iotd: ''
    }
  },
  methods: {
      getResult(query) {
        axios.get('https://images-api.nasa.gov/search?q=' + query + '&media_type=image').then( response => {
            this.results = response.data.collection.items;
        });
      },
      getIotd() {
        axios.get('https://api.nasa.gov/planetary/apod?api_key=EncrOAEVjDDSTKR00jNkc29taqyN5hb6ek2mtITx').then( response => {
            this.iotd = response.data.url
        });
      }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.results img {
    height: 300px;
    margin: 10px;
}
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
