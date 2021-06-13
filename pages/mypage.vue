<template>
  <div class="myself" v-if="user">
    <table cellspacing="20">
      <tr>
        <td><img src="@/static/myself.jpeg" alt="kazuki profile picture"></td>
        <td>
          <h1>Kazuki Shimamoto</h1>
          <p><em>Engineer at <strong><a href="https://studist.jp/">Studist Company</a></strong></em></p>
          <p>I am a Web Developer. I love coffee and the Japanese comedian named "Kamaitachi"</p>
        </td>
      </tr>
    </table>

    <hr>

    <h3>Thesis</h3>
    <ul>
      <li>
        Kazuki Shimamoto, Shin-ichi Ito, Momoyo Ito and Minoru Fukumi :
        A Nail Image Analysis Method to Evaluate Accumulated Stress Using Fuzzy Reasoning,
        Proc. of ISPACS 2019, 1-2, Taipei, Dec. 2019.
      </li>
    </ul>

    <hr>

    <h3>My Hobbies</h3>
    <ol>
      <li><a href="https://www.netflix.com/" >Watching movie</a></li>
      <li>Taiking a walk</li>
    </ol>

    <hr>

    <h3>Work Experience</h3>
    <table cellspacing="10">
      <thead>
        <tr>
          <th>Dates</th>
          <th>Work</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2020-</td>
          <td>Engineer at Studist</td>
        </tr>
        <tr>
          <td>2014-2020</td>
          <td>Graduate from Tokushima University</td>
        </tr>
      </tbody>
    </table>

    <hr>

    <h3>Skills</h3>
    <table cellspacing="10">
      <tr>
        <td>
          <table>
            <tr>
              <td>Web development</td>
              <td>⭐️⭐️⭐️⭐️⭐️</td>
            </tr>
            <tr>
              <td>HTML</td>
              <td>⭐️⭐️</td>
            </tr>
            <tr>
              <td>CSS</td>
              <td>⭐️</td>
            </tr>
            <tr>
              <td>JavaScript</td>
              <td>⭐️⭐️⭐️⭐️</td>
            </tr>
            <tr>
              <td>Ruby</td>
              <td>⭐️⭐️⭐️⭐️</td>
            </tr>
          </table>
        </td>
        <td>
          <table>
            <tr>
              <td>iOS development</td>
              <td>⭐️</td>
            </tr>
            <tr>
              <td>Vue</td>
              <td>⭐️⭐️</td>
            </tr>
            <tr>
              <td>Rails</td>
              <td>⭐️</td>
            </tr>
            <tr>
              <td>MySQL</td>
              <td>⭐️⭐️⭐️⭐️</td>
            </tr>
            <tr>
              <td>Webpack</td>
              <td>⭐️⭐️⭐️⭐️</td>
            </tr>
          </table>
        </td>
      </tr>
    </table>

    <hr>
  </div>
</template>

<script>
export default {
  data() {
    return {
      user: null
    }
  },
  mounted() {
    this.$fire.auth.onAuthStateChanged((user) => {
      if (user) {
        this.user = user
      } else {
      }
    });
  }
}
</script>

<style>

</style>
