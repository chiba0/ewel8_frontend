<script setup lang="ts">
import Vue from "vue";
import axios from "axios";
import * as Keycloak from "keycloak-js";
import VueLogger from "vuejs-logger";

const requestToken = async (username = "admin", password = "admin") => {
  // const url =
  //   "http://localhost:8880/realms/master/protocol/openid-connect/token";
  // const data = new URLSearchParams({
  //   client_id: "admin-cli",
  //   password: username,
  //   username: password,
  //   grant_type: "password",
  // }).toString();
  // // ヘッダーにContent-Typeを指定
  // const headers = {
  //   headers: {
  //     "Content-Type": "application/x-www-form-urlencoded",
  //   },
  // };
  // return await axios.post(url, data, headers);
};

const exec = async (userName: string) => {
  const token = requestToken();
  console.log(token);
  //alert(userName);
};

exec("practice-user");
</script>
<template>
  <div class="about">
    <h1>This is an sample page</h1>
  </div>
</template>
