<template>
  <div class="container">
    <div>
      <Logo />
      <h1 class="title">
        webapp
      </h1>
      <div class="links">
        <a
          href="/mypage"
          rel="noopener noreferrer"
          class="button--green"
        >
          My Page
        </a>
        <a
          rel="noopener noreferrer"
          class="button--green"
          @click="login"
        >
          Login
        </a>
        <a
          rel="noopener noreferrer"
          class="button--grey"
          @click="logout"
        >
          Logout
        </a>
        <div v-if="user">
          <img :src="icon" alt="ユーザーのアイコン" style="border-radius: 50px; display: inline;">
          <span>{{ user.displayName }}</span>
          <span>{{ user.email }}</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      user: null
    }
  },
  computed: {
    icon() {
      return this.user?.photoURL
    }
  },
  mounted() {
    this.$fire.auth.onAuthStateChanged((user) => {
      if (user) {
        this.user = user
      } else {
      }
    });
  },
  methods: {
    login() {
      var provider = new this.$fireModule.auth.GoogleAuthProvider();
      this.$fire.auth.signInWithPopup(provider)
        .then((result) => {
          this.user = result.user;
        }).catch((error) => {
        });
    },
    logout() {
      this.$fire.auth.signOut().then(() => {
        // Sign-out successful.
        this.user = null
        console.log('logoutしました')
      }).catch((error) => {
        // An error happened.
      });
    }
  }
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family:
    'Quicksand',
    'Source Sans Pro',
    -apple-system,
    BlinkMacSystemFont,
    'Segoe UI',
    Roboto,
    'Helvetica Neue',
    Arial,
    sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
