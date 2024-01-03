# keycloak の実行

# 管理画面

chiba@chiba:~/keycloak$ docker run -p 8880:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:23.0.3 start-dev

- 接続
  http://localhost:8880
- ID/PW
  admin/admin

# 管理画面

http://localhost:8880/admin/master/console/#/test

chiba@innovation-gate.jp/takahiro1234

# ログイン画面

- http://localhost:8080/about
- ログイン画面に遷移される
- user1234/user1234
- ログイン成功

# vue ui の表示

chiba@chiba:~/ewel8_frontend$ vue ui

# ewel_new

## Project setup

```
yarn install
```

### Compiles and hot-reloads for development

```
yarn serve
```

### Compiles and minifies for production

```
yarn build
```

### Run your unit tests

```
yarn test:unit
```

### Lints and fixes files

```
yarn lint
```

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).
