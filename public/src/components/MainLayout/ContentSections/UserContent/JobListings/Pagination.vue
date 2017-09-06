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
  margin-top: 60px;
}

h1,
h2 {
  font-weight: normal;
}

.paginate-list ul {
  list-style-type: none;
  padding: 0;
  background: pink;

}

li {
  display: inline-block;
  margin: 0 10px;
}
.buttons {
  width: 30%;
  
  background: pink;
}

.paginate-list {
  width: 159px;
  margin: 0 auto;
  text-align: left;

}
.paginate-list li {
  display: flex;
  /*&:before {
    content: '⚬ ';
    font-weight: bold;
    color: slategray;
  }*/
}

.paginate-links.items {
  user-select: none;
  a {
    cursor: pointer;
  }
  li.active a {
    font-weight: bold;
  }
  li.next:before {
    content: ' | ';
    margin-right: 13px;
    color: #ddd;
  }
  li.disabled a {
    color: #ccc;
    cursor: no-drop;
  }
}

a {
  color: blue;
}

</style>
