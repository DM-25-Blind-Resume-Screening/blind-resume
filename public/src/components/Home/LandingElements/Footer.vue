<template >
  <div class="footer-div">
    <p>© All rights reserved. Made with ❤️ by
    <a class="link-to-portfolio" href="http://www.seewilsoncode.com">Christopher Wilson</a>,
    <a class="link-to-portfolio" href="http://www.aschuette.com/">Ashley Schuette</a> and
    <a class="link-to-portfolio" href="http://logantruong.com">Logan Truong.</a>
    </p>
  </div>
</template>

<script>
export default {
}
</script>

<style>
.footer-div {
  height: 120px;
  width: 100%;
  background: #304377;
  box-shadow: inset 1px 1px 10px rgba(0,0,0,0.5);
  display: flex;
  color: rgba(250,250,250,0.7);
  font-size: 12px;
  align-items: center;
  justify-content: center;
}
.link-to-portfolio {
  text-decoration: underline;
  color: white;
  cursor: pointer;
}
</style>
