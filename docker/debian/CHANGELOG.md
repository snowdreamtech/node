# Changelog

## [20.19.2](https://github.com/snowdreamtech/node/compare/debian-v20.19.2...debian-v20.19.2) (2026-08-21)


### 🐛 Bug Fixes

* remove static version defaults from OCI image labels to use variable injection exclusively ([da5645a](https://github.com/snowdreamtech/node/commit/da5645ad4d48467290235abbbd9f31ba70bf690f))
* use ghcr.io for base images to avoid rate limits ([9f1d73a](https://github.com/snowdreamtech/node/commit/9f1d73a75a61f2f368f5572c4bd28f4c92ef8fd5))


### 🛠 Refactoring

* **docker:** align Dockerfiles with base image structure ([232574f](https://github.com/snowdreamtech/node/commit/232574fed8418f8c7f257d001e951361dfa467a0))
* migrate Dockerfiles to dev skeleton and update node versions ([3deec06](https://github.com/snowdreamtech/node/commit/3deec0652dbcae993c2537110854a581c0c4a578))
* remove redundant docker-entrypoint.sh files ([87c576b](https://github.com/snowdreamtech/node/commit/87c576b27731ad11c5bc0ebc661e07c5a09ff1c1))
* rename APP_VERSION to NODEJS_VERSION in Dockerfiles ([b2a3340](https://github.com/snowdreamtech/node/commit/b2a3340679027feb3c6cdb24f7234c3691822076))
* reorganize distribution variants into docker directory ([67a8c91](https://github.com/snowdreamtech/node/commit/67a8c911e21801bf12b3e83d02e22f3b3f59a2ba))
* update precise nodejs versions corresponding to base image systems ([b8b6d99](https://github.com/snowdreamtech/node/commit/b8b6d9932e0568f7582aea599f5ab074b0437f09))


### 📖 Documentation

* add detailed comments to entrypoint initialization scripts ([f42cbaa](https://github.com/snowdreamtech/node/commit/f42cbaab6edfbc5c38c2a636dfd8651fea900940))


### ♻️ Miscellaneous Chores

* add 0-git-keep.sh to prevent empty entrypoint.d directories ([ce77247](https://github.com/snowdreamtech/node/commit/ce77247762becc1edf85ec7b57747d3f3127044a))
* clear previous changelog entries ([020ff24](https://github.com/snowdreamtech/node/commit/020ff24c6f94d72d34f3c4eeae3b7e0c62453d9d))
* **deps:** bump base images to alpine 3.24.0, debian 13.5.0, rocky 10.2.0 ([1688969](https://github.com/snowdreamtech/node/commit/168896956d2f4c7f91309c4c98ffef36ca7e8546))
* merge upstream/dev into dev ([cd61821](https://github.com/snowdreamtech/node/commit/cd61821475445c50126f0de75766a8fefb5312df))
* release main ([b17f821](https://github.com/snowdreamtech/node/commit/b17f821a375b8681e9c28f9c600a6456e8505601))
* release main ([c874680](https://github.com/snowdreamtech/node/commit/c87468050ba3f5ccd117ee1e7ff7935e0f5c588f))
* release main ([c9db13e](https://github.com/snowdreamtech/node/commit/c9db13ecc5033081c703e996d33c7503860ec15e))
* release main ([5a92edb](https://github.com/snowdreamtech/node/commit/5a92edb4ba76b04ee6de7369e9471f785849a7ae))
* release main ([4011a21](https://github.com/snowdreamtech/node/commit/4011a21a23395acc9545168c95ca0ec5c867e7d3))
* release main ([d52be5c](https://github.com/snowdreamtech/node/commit/d52be5cf0c5cff45f7f72e973d62c94b48855e1b))
* release main ([f66597a](https://github.com/snowdreamtech/node/commit/f66597a5feae95e8853f4cc730c81e93e172f6ca))
* release main ([b3a5cc9](https://github.com/snowdreamtech/node/commit/b3a5cc9ef0a64a7bc04ed7c2acf0cca5327c5c26))
* release main ([deb8454](https://github.com/snowdreamtech/node/commit/deb8454df7518d56939ab3851245a4cd7b03d709))
* release main ([d87cb81](https://github.com/snowdreamtech/node/commit/d87cb815685ad9b5b43d4b9a195c68dee2fd8065))
* release main ([f7a6610](https://github.com/snowdreamtech/node/commit/f7a66107bf4f91085a4343e37f570db4507952e3))
* release main ([78328d2](https://github.com/snowdreamtech/node/commit/78328d20bd3697d48ea90aee8d0eaa6af4ccc09c))
* release main ([b720ad5](https://github.com/snowdreamtech/node/commit/b720ad57dd1691d8ae07dcac7d46d0bd257af3a0))
* release main ([32dd84d](https://github.com/snowdreamtech/node/commit/32dd84de4be973395d0867b5d527d528948a35df))
* release main ([725c69f](https://github.com/snowdreamtech/node/commit/725c69fdcc222b5b83d0690629ce213a68c586ab))
* release main ([070b694](https://github.com/snowdreamtech/node/commit/070b694a702763b60fc6b057a81418320418cafa))
* release main ([36d1211](https://github.com/snowdreamtech/node/commit/36d1211036847a8c6aaa01a21a1c695a47b71d45))
* release main ([9ad4f94](https://github.com/snowdreamtech/node/commit/9ad4f9490832efdc310f2ebbd8c77f3404daf07f))
* release main ([b0684a3](https://github.com/snowdreamtech/node/commit/b0684a32a652e83506451e6056168cfec8b9142c))
* release main ([495e18a](https://github.com/snowdreamtech/node/commit/495e18a4babcb06a12c2f5aec9ea571d97cb32e3))
* release main ([d4a3a34](https://github.com/snowdreamtech/node/commit/d4a3a34b00a6b9f381cd5d556749c257516b2f08))
* release main ([28d9426](https://github.com/snowdreamtech/node/commit/28d94263f4374017274707faef7183917b689be9))
* **release:** deduplicate CHANGELOG headers ([e24bc84](https://github.com/snowdreamtech/node/commit/e24bc84b4d6e663f28492e623678ef23927aa53d))
* **release:** deduplicate CHANGELOG headers ([a186680](https://github.com/snowdreamtech/node/commit/a186680625ac23b3ebbdf41e75a7370f38e03d22))
* **release:** deduplicate CHANGELOG headers ([4f07b71](https://github.com/snowdreamtech/node/commit/4f07b71194f58ba214f1fb60ce0dc56d71c499e2))
* **release:** deduplicate CHANGELOG headers ([3068d88](https://github.com/snowdreamtech/node/commit/3068d883bc6167773d046d3b2b0e4c479e4fee39))
* **release:** deduplicate CHANGELOG headers ([82be3d5](https://github.com/snowdreamtech/node/commit/82be3d5576b65b7f69b1a9afb8604f2c8f0e47f7))
* **release:** deduplicate CHANGELOG headers ([d47fb44](https://github.com/snowdreamtech/node/commit/d47fb44cb105b368722d7d0e210a27b525f82d87))
* **release:** deduplicate CHANGELOG headers ([e795177](https://github.com/snowdreamtech/node/commit/e79517795d98b9f8292ef956586a6dc03932d03c))
* **release:** deduplicate CHANGELOG headers ([27919e4](https://github.com/snowdreamtech/node/commit/27919e4baf4aab5b2a2bf32a7d437b05a717c11b))
* **release:** deduplicate CHANGELOG headers ([438190d](https://github.com/snowdreamtech/node/commit/438190d297c151c75eca4912fdc22c285d5ec1ea))
* **release:** deduplicate CHANGELOG headers ([256f043](https://github.com/snowdreamtech/node/commit/256f04311b2344f2648ca5bcf407146f8c690258))
* **release:** deduplicate CHANGELOG headers ([d263aae](https://github.com/snowdreamtech/node/commit/d263aae7b223103a01dd0e114430381c5d863dd7))
* **release:** deduplicate CHANGELOG headers ([133954e](https://github.com/snowdreamtech/node/commit/133954e95cfae85cbba2fb9c1ac5acbc677ca39d))
* **release:** deduplicate CHANGELOG headers ([1d82410](https://github.com/snowdreamtech/node/commit/1d82410d6038be22d7741f1519826f30023b0f3e))
* **release:** deduplicate CHANGELOG headers ([5e1a539](https://github.com/snowdreamtech/node/commit/5e1a5390319933b48d20ad993714587d826c0aa7))
* **release:** implement automatic changelog deduplication step ([282c220](https://github.com/snowdreamtech/node/commit/282c22081e1ad7a1a010a7f297d20bc7c9b416a7))
* **speckit:** manual auto-commit trigger ([5f8a5a9](https://github.com/snowdreamtech/node/commit/5f8a5a9cba5d6bd42a65eaabfecd6e18b01aeeb0))
* sync debian build matrix and documentation with upstream ([0d6e613](https://github.com/snowdreamtech/node/commit/0d6e6132c84a368f5b64b9144d9c7d3b7292d746))
* update debian base image to 13.6.0 ([5f885d5](https://github.com/snowdreamtech/node/commit/5f885d5a771f06d449533f2f3c619d27444822f5))

## [20.19.2](https://github.com/snowdreamtech/node/compare/debian-v20.19.2...debian-v20.19.2) (2026-08-19)


### 🐛 Bug Fixes

* remove static version defaults from OCI image labels to use variable injection exclusively ([da5645a](https://github.com/snowdreamtech/node/commit/da5645ad4d48467290235abbbd9f31ba70bf690f))
* use ghcr.io for base images to avoid rate limits ([9f1d73a](https://github.com/snowdreamtech/node/commit/9f1d73a75a61f2f368f5572c4bd28f4c92ef8fd5))


### 🛠 Refactoring

* **docker:** align Dockerfiles with base image structure ([232574f](https://github.com/snowdreamtech/node/commit/232574fed8418f8c7f257d001e951361dfa467a0))
* migrate Dockerfiles to dev skeleton and update node versions ([3deec06](https://github.com/snowdreamtech/node/commit/3deec0652dbcae993c2537110854a581c0c4a578))
* remove redundant docker-entrypoint.sh files ([87c576b](https://github.com/snowdreamtech/node/commit/87c576b27731ad11c5bc0ebc661e07c5a09ff1c1))
* rename APP_VERSION to NODEJS_VERSION in Dockerfiles ([b2a3340](https://github.com/snowdreamtech/node/commit/b2a3340679027feb3c6cdb24f7234c3691822076))
* reorganize distribution variants into docker directory ([67a8c91](https://github.com/snowdreamtech/node/commit/67a8c911e21801bf12b3e83d02e22f3b3f59a2ba))
* update precise nodejs versions corresponding to base image systems ([b8b6d99](https://github.com/snowdreamtech/node/commit/b8b6d9932e0568f7582aea599f5ab074b0437f09))


### 📖 Documentation

* add detailed comments to entrypoint initialization scripts ([f42cbaa](https://github.com/snowdreamtech/node/commit/f42cbaab6edfbc5c38c2a636dfd8651fea900940))


### ♻️ Miscellaneous Chores

* add 0-git-keep.sh to prevent empty entrypoint.d directories ([ce77247](https://github.com/snowdreamtech/node/commit/ce77247762becc1edf85ec7b57747d3f3127044a))
* clear previous changelog entries ([020ff24](https://github.com/snowdreamtech/node/commit/020ff24c6f94d72d34f3c4eeae3b7e0c62453d9d))
* **deps:** bump base images to alpine 3.24.0, debian 13.5.0, rocky 10.2.0 ([1688969](https://github.com/snowdreamtech/node/commit/168896956d2f4c7f91309c4c98ffef36ca7e8546))
* merge upstream/dev into dev ([cd61821](https://github.com/snowdreamtech/node/commit/cd61821475445c50126f0de75766a8fefb5312df))
* release main ([c874680](https://github.com/snowdreamtech/node/commit/c87468050ba3f5ccd117ee1e7ff7935e0f5c588f))
* release main ([c9db13e](https://github.com/snowdreamtech/node/commit/c9db13ecc5033081c703e996d33c7503860ec15e))
* release main ([5a92edb](https://github.com/snowdreamtech/node/commit/5a92edb4ba76b04ee6de7369e9471f785849a7ae))
* release main ([4011a21](https://github.com/snowdreamtech/node/commit/4011a21a23395acc9545168c95ca0ec5c867e7d3))
* release main ([d52be5c](https://github.com/snowdreamtech/node/commit/d52be5cf0c5cff45f7f72e973d62c94b48855e1b))
* release main ([f66597a](https://github.com/snowdreamtech/node/commit/f66597a5feae95e8853f4cc730c81e93e172f6ca))
* release main ([b3a5cc9](https://github.com/snowdreamtech/node/commit/b3a5cc9ef0a64a7bc04ed7c2acf0cca5327c5c26))
* release main ([deb8454](https://github.com/snowdreamtech/node/commit/deb8454df7518d56939ab3851245a4cd7b03d709))
* release main ([d87cb81](https://github.com/snowdreamtech/node/commit/d87cb815685ad9b5b43d4b9a195c68dee2fd8065))
* release main ([f7a6610](https://github.com/snowdreamtech/node/commit/f7a66107bf4f91085a4343e37f570db4507952e3))
* release main ([78328d2](https://github.com/snowdreamtech/node/commit/78328d20bd3697d48ea90aee8d0eaa6af4ccc09c))
* release main ([b720ad5](https://github.com/snowdreamtech/node/commit/b720ad57dd1691d8ae07dcac7d46d0bd257af3a0))
* release main ([32dd84d](https://github.com/snowdreamtech/node/commit/32dd84de4be973395d0867b5d527d528948a35df))
* release main ([725c69f](https://github.com/snowdreamtech/node/commit/725c69fdcc222b5b83d0690629ce213a68c586ab))
* release main ([070b694](https://github.com/snowdreamtech/node/commit/070b694a702763b60fc6b057a81418320418cafa))
* release main ([36d1211](https://github.com/snowdreamtech/node/commit/36d1211036847a8c6aaa01a21a1c695a47b71d45))
* release main ([9ad4f94](https://github.com/snowdreamtech/node/commit/9ad4f9490832efdc310f2ebbd8c77f3404daf07f))
* release main ([b0684a3](https://github.com/snowdreamtech/node/commit/b0684a32a652e83506451e6056168cfec8b9142c))
* release main ([495e18a](https://github.com/snowdreamtech/node/commit/495e18a4babcb06a12c2f5aec9ea571d97cb32e3))
* release main ([d4a3a34](https://github.com/snowdreamtech/node/commit/d4a3a34b00a6b9f381cd5d556749c257516b2f08))
* release main ([28d9426](https://github.com/snowdreamtech/node/commit/28d94263f4374017274707faef7183917b689be9))
* **release:** deduplicate CHANGELOG headers ([a186680](https://github.com/snowdreamtech/node/commit/a186680625ac23b3ebbdf41e75a7370f38e03d22))
* **release:** deduplicate CHANGELOG headers ([4f07b71](https://github.com/snowdreamtech/node/commit/4f07b71194f58ba214f1fb60ce0dc56d71c499e2))
* **release:** deduplicate CHANGELOG headers ([3068d88](https://github.com/snowdreamtech/node/commit/3068d883bc6167773d046d3b2b0e4c479e4fee39))
* **release:** deduplicate CHANGELOG headers ([82be3d5](https://github.com/snowdreamtech/node/commit/82be3d5576b65b7f69b1a9afb8604f2c8f0e47f7))
* **release:** deduplicate CHANGELOG headers ([d47fb44](https://github.com/snowdreamtech/node/commit/d47fb44cb105b368722d7d0e210a27b525f82d87))
* **release:** deduplicate CHANGELOG headers ([e795177](https://github.com/snowdreamtech/node/commit/e79517795d98b9f8292ef956586a6dc03932d03c))
* **release:** deduplicate CHANGELOG headers ([27919e4](https://github.com/snowdreamtech/node/commit/27919e4baf4aab5b2a2bf32a7d437b05a717c11b))
* **release:** deduplicate CHANGELOG headers ([438190d](https://github.com/snowdreamtech/node/commit/438190d297c151c75eca4912fdc22c285d5ec1ea))
* **release:** deduplicate CHANGELOG headers ([256f043](https://github.com/snowdreamtech/node/commit/256f04311b2344f2648ca5bcf407146f8c690258))
* **release:** deduplicate CHANGELOG headers ([d263aae](https://github.com/snowdreamtech/node/commit/d263aae7b223103a01dd0e114430381c5d863dd7))
* **release:** deduplicate CHANGELOG headers ([133954e](https://github.com/snowdreamtech/node/commit/133954e95cfae85cbba2fb9c1ac5acbc677ca39d))
* **release:** deduplicate CHANGELOG headers ([1d82410](https://github.com/snowdreamtech/node/commit/1d82410d6038be22d7741f1519826f30023b0f3e))
* **release:** deduplicate CHANGELOG headers ([5e1a539](https://github.com/snowdreamtech/node/commit/5e1a5390319933b48d20ad993714587d826c0aa7))
* **release:** implement automatic changelog deduplication step ([282c220](https://github.com/snowdreamtech/node/commit/282c22081e1ad7a1a010a7f297d20bc7c9b416a7))
* **speckit:** manual auto-commit trigger ([5f8a5a9](https://github.com/snowdreamtech/node/commit/5f8a5a9cba5d6bd42a65eaabfecd6e18b01aeeb0))
* sync debian build matrix and documentation with upstream ([0d6e613](https://github.com/snowdreamtech/node/commit/0d6e6132c84a368f5b64b9144d9c7d3b7292d746))
* update debian base image to 13.6.0 ([5f885d5](https://github.com/snowdreamtech/node/commit/5f885d5a771f06d449533f2f3c619d27444822f5))
