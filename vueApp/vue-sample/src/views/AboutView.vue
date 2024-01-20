<script setup lang="ts">
import { ref } from "vue";
import Keycloak from "keycloak-js";

const keycloak = new Keycloak({
  url: "http://localhost:8880",
  realm: "test",
  clientId: "account",
});

let isLogin = ref(false);

keycloak
  .init({
    onLoad: "login-required",
    checkLoginIframe: false,
  })
  .then((authenticated) => (isLogin.value = authenticated))
  .catch((e) => console.error(e));
const logout = () => keycloak.logout({ redirectUri: "http://localhost:5173/" });
</script>
<template>
  <div class="about">
    <h1>This is an about page</h1>
  </div>
</template>
