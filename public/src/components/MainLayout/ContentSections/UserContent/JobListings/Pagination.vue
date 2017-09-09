<template>
<div class="wrapper">
  <paginate name="items" :list="items" class="paginate-list">
    <li v-for="item in paginated('items')">
      {{ item }}
    </li>
  </paginate>
  <paginate-links class="buttons" for="items" :limit="2" :show-step-links="true"></paginate-links>
</div>
</template>

<script>
export default {
  data() {
    return {
    items: ['JavaScript', 'PHP', 'HTML', 'CSS', 'Ruby', 'Python', 'Erlang'],
    paginate: ['items']
    }
  }
}
</script>

<style lang="css">
.wrapper {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  font-size: 20px;
  text-align: center;
  color: #2c3e50;
  margin: 0 60px;
  width: 80%;
  height: 500px;
  display: flex;
  flex-direction: column;
  background: gray;
  justify-content: space-between;
}

h1,
h2 {
  font-weight: normal;
}


li {
  display: inline-block;
  margin: 0 10px;
}
.buttons {
  width: 100%;
  /*background: pink;*/
}

.paginate-list {
  height: 100%;
  margin: 20px;
  background: lightgreen;
  display: flex;
  flex-direction: column;
}

.buttons {
  width: 100%;
}
.paginate-links.items {
  user-select: none;
}
.paginate-links.items a {
    cursor: pointer;
  }
.paginate-links.items li.active a {
    font-weight: bold;
  }
.paginate-links.items li .disabled a {
    color: red;
    cursor: no-drop;
  }

.paginate-links.items a {
  color: black;
  font-size: 30px;
  /*background: red;*/
}

</style>
