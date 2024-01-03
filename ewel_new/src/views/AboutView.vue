<script setup lang="ts">
import { ref } from "vue";
import Keycloak from "keycloak-js";

const keycloak = new Keycloak({
  url: "http://localhost:8880/",
  realm: "test",
  clientId: "account",
});

let isLogin = ref(false);
keycloak
  .init({ onLoad: "login-required", checkLoginIframe: false })
  .then((authenticated) => (isLogin.value = authenticated))
  .catch((e) => console.error(e));

const logout = () => keycloak.logout({ redirectUri: "http://localhost:8080/" });
</script>
<template>
  <v-app style="min-width: 1200px">
    <v-app-bar color="primary" density="compact">
      <v-app-bar-title class="text-lg-subtitle-1">
        イノベーションゲート管理画面
      </v-app-bar-title>
      <v-spacer />
      <p class="mb-0 mr-2 text-caption">
        管理システム<br />
        <a href="">HOME</a> |
        <button @click="logout">ログアウト</button>
      </p>
    </v-app-bar>
    <v-main class="justify-center">
      <v-container class="w-100" style="max-width: 100%">
        <v-row class="my-n4">
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >企業情報変更</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >新規パートナー登録</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >受検者検索</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >検査ログ</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >PDF出力ログ</v-btn
            >
          </v-col>
        </v-row>
        <v-row class="my-n4">
          <v-col>
            <v-btn :height="26" color="blue-lighten-3" class="w-100"
              >検査種別ROWデータ</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-3" class="w-100"
              >請求書一覧</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-3" class="w-100"
              >ライセンス一覧</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-3" class="w-100"
              >トライアルID</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-3" class="w-100"
              >お知らせ機能</v-btn
            >
          </v-col>
        </v-row>
        <v-row class="my-n4">
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >受検者ログイン情報</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >管理者ログイン情報</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >企業一覧</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >PDF一覧</v-btn
            >
          </v-col>
          <v-col>
            <v-btn :height="26" color="blue-lighten-4" class="w-100"
              >セキュリティログ</v-btn
            >
          </v-col>
        </v-row>
        <v-form class="mt-3">
          <v-row>
            <v-col cols="12" class="py-0 font-weight-bold">検索フォーム</v-col>
          </v-row>
          <v-row class="py-0">
            <v-col cols="3" class="font-weight-bold d-flex">
              <v-text-field
                label="企業名"
                variant="outlined"
                density="compact"
              ></v-text-field>
              <v-btn class="ml-3 mt-2" color="primary" dense height="24px"
                >検索</v-btn
              >
            </v-col>
          </v-row>
        </v-form>

        <v-row>
          <v-table density="compact" class="w-100">
            <thead>
              <tr>
                <th class="font-weight-black">企業名</th>
                <th class="font-weight-black">購入ライセンス数</th>
                <th class="font-weight-black">販売可能ライセンス数</th>
                <th class="font-weight-black">受検者数</th>
                <th class="font-weight-black">処理数</th>
                <th class="font-weight-black">残数</th>
                <th class="text-center font-weight-black">機能</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>イシズエワークス株式会社</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>
                  <v-row class="d-flex justify-center">
                    <v-btn :height="26" color="indigo-darken-4">パートナ</v-btn>
                    <v-btn :height="26" class="ml-2" color="indigo-darken-4"
                      >更新</v-btn
                    >
                    <v-btn :height="26" class="ml-2" color="indigo-darken-4"
                      >添付</v-btn
                    >
                  </v-row>
                </td>
              </tr>
              <tr>
                <td>イシズエワークス株式会社</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>
                  <v-row class="d-flex justify-center">
                    <v-btn :height="26" color="indigo-darken-4">パートナ</v-btn>
                    <v-btn :height="26" class="ml-2" color="indigo-darken-4"
                      >更新</v-btn
                    >
                    <v-btn :height="26" class="ml-2" color="indigo-darken-4"
                      >添付</v-btn
                    >
                  </v-row>
                </td>
              </tr>
              <tr>
                <td>イシズエワークス株式会社</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>1,046</td>
                <td>
                  <v-row class="d-flex justify-center">
                    <v-btn :height="26" color="indigo-darken-4">パートナ</v-btn>
                    <v-btn :height="26" class="ml-2" color="indigo-darken-4"
                      >更新</v-btn
                    >
                    <v-btn :height="26" class="ml-2" color="indigo-darken-4"
                      >添付</v-btn
                    >
                  </v-row>
                </td>
              </tr>
            </tbody>
          </v-table>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<style scoped lang="scss">
table {
  border-left: 1px solid #ccc !important;
  th {
    background-color: #999;
    border-right: 1px solid #ccc;
    text-align: center;
  }
  td {
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
  }
}
</style>
