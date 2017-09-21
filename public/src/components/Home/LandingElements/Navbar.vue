<template>
<div class="wrapper">
  <div class="navbar_div">
    <div class="logo-div">
      <img class="logo" src="../../../assets/BE.png"/>
    </div>
  </div>
  <div class="login-button-div">
    <md-button class="md-primary md-raised" id="custom" @click="openDialog('dialog1')">Login</md-button>
  <md-dialog md-open-from="#custom" md-close-to="#custom" ref="dialog1">
    <md-dialog-title>Log in as</md-dialog-title>
    <!-- <md-dialog-content>Log in as</md-dialog-content> -->
      <md-dialog-actions>
          <a href="http://165.227.99.251:3001/auth/2">
            <md-button class="md-primary" @click="closeDialog('dialog1')">
            Employer
            </md-button>
          </a>
          <a href="http://165.227.99.251:3001/auth/1">
            <md-button class="md-primary" @click="closeDialog('dialog1')">
            Job-Seeker
            </md-button>
          </a>
      </md-dialog-actions>
  </md-dialog>
  </div>
</div>
</template>

<script>
export default {
  methods: {
    openDialog(ref) {
      this.$refs[ref].open();
    },
    closeDialog(ref) {
      this.$refs[ref].close();
    }
  }
}
</script>

<style>
.navbar_div {
  width: 100vw;
  height: 60px;
  padding: 0 30px;
  background: linear-gradient(45deg,#4473ff,#87e2f2);
  display: flex;
  align-items: center;
  justify-content: space-between;
  box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.5);
  position:fixed;
  top: 0;
  opacity: 1;
  z-index: 499;
}
.logo-div {
  height: 60px;
  width: 115px;
  z-index: 501;
}
.logo{
  height: 60px;
  width: 115px;
}
.login-button-div {
  position: fixed;
  right: 15px;
  top: 5px;
  z-index: 501;
}

.md-button{
  width: 120px;
  background: white;
}

.md-backdrop.md-active {
    opacity: 1;
    pointer-events: auto;
}

.md-dialog-backdrop {
    position: fixed;
    z-index: 109;

}

.md-backdrop {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 99;
    pointer-events: none;
    background-color: rgba(0, 0, 0, 0.54);
    transform: translate3d(0, 0, 0);
    opacity: 0;
    transition: all 0.5s cubic-bezier(0.35, 0, 0.25, 1);
}

</style>
