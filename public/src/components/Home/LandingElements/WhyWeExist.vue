<template>
  <div class="why-wrapper">
    <div class="header-div">
      <div class="line"></div>
      <h1>Why we exist</h1>
      <div class="line"></div>
    </div>
    <p>Studies did something </p>
    <div class="article-div">
      <img class="article" src="../../../assets/article.png" alt="article">
    </div>

  </div>
</template>

<script>
export default {
}
</script>

<style>
.why-wrapper {
  height: 700px;
  width: 100%;
  display: flex;
  justify-content: space-around;
  align-items: center;
  flex-direction: column;
  background: pink;
}
.header-div {
  height: 50px;
  width: 90%;
  font-size: 25px;
  display: flex;
  justify-content: space-around;
  align-items: center;
}
.line{
  height:1px;
  width: 40%;
  background: black;
}
.article-div {
  height: 400px;
  width: 500px;
}
.article {
  height:400px;
  width:500px;
  box-shadow: 1px 1px 15px rgba(0, 0, 0, 0.5);
}
</style>
