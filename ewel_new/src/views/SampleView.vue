<script setup lang="ts">
import { ref } from "vue";
import Keycloak from "keycloak-js";
import { a, b, testfunc } from "../plugins/Sample";

const keycloak = new Keycloak({
  url: "http://localhost:8880/",
  realm: "ewel8",
  clientId: "account",
});

testfunc();
console.log(a);
console.log(b);

let isLogin = ref(false);
keycloak
  .init({ onLoad: "login-required", checkLoginIframe: false })
  .then((authenticated) => (isLogin.value = authenticated))
  .catch((e) => console.error(e));

const getFlag = () => {
  return a;
};
</script>
<template>
  <div>sample</div>
  <div>keycloak側へuser登録=>{{ getFlag() }}</div>
</template>

<style scoped lang="scss"></style>
