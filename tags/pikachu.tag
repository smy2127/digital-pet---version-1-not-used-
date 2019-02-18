<pikcahu>
  <div class="container">
    <!-- Head  -->
    <div class="row">
      <div class="col">
        <h1> Pikachu </h1>
      </div>
    </div>
    <!-- Image part -->
    <div class="row">
      <div class="col">
        <img src = {imgPikachu} alt="Pikachu" style="width:220px;height:245px;">
          <h4 show = {happy >= 60 }> I love CHU! </h4>
          <h4 show = {hungry >= 30}> Feed me! <h4>
          <h4 show = {strength >= 30 <!--&& 16 <= hungry <=25 -->}> Let's hit the battleground!
      </div>



    </div>
    <!-- Pikachu  States  -->
    <div class="row">
      <div class="col states">
        <ul>
          <li>Happy: {happy} <span id="happy"></span></li>
          <li>Hungry: {hungry} <span id="hungry"></span></li>
          <li>Strength: {strength} <span id="strength"></span></li>
        </ul>
      </div>
    </div>
    <!-- Pikachu Reactions -->
    <div class="row">
      <div class="col reactions">
        <ul>
          <li>
            <button onclick={ play }>Play</button>
          </li>
          <li>
            <button onclick={ feed }>Feed</button>
          </li>
          <li>
            <button onclick={ train }>Train</button>
          </li>
          <li>
            <button onclick={ rest }>Rest</button>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <script>
  // JAVASCRIPT
  let tag = this;
  this.imgPikachu = "https://media.giphy.com/media/13G7hmmFr9yuxG/giphy.gif"


  this.happy = 50
  this.hungry = 20;
  this.strength = 20;

  play(event) {
  this.happy +=2;
  this.hungry +=0.5;
  this.strength -=1;

  if (this.happy >= 60){
      this.imgPikachu = "https://media.giphy.com/media/3gvsorJuyYLx6/giphy.gif"
    }
    else if (this.happy >= 30) {
      this.imgPikachu = "https://media3.giphy.com/media/TnPAmP7OLTaeY/giphy.gif"
    }
    else {
      this.imgPikachu = "https://media.giphy.com/media/QZB0rrcGLljpu/giphy.gif"
      }

  }

  feed(event){
    this.happy +=0.5;
    this.hungry -=1;
    this.strength +=0.5;
  //  this.imgPikachu = "https://media.giphy.com/media/zdU2mUIL5S012/giphy.gif"

    if (this.hungry <= 15){
      this.imgPikachu = "https://orig00.deviantart.net/edc3/f/2014/032/2/4/fatpikachu_gif_by_butt_prince_ike-d74pbx9.gif"
    }
  //  else if (this.hungry >= 30) {
  //    this.imgPikachu = "https://i.imgur.com/b0R6GJ1.gif"
  //  }
    else {
      this.imgPikachu ="https://media.giphy.com/media/zdU2mUIL5S012/giphy.gif"
    }
  }

  train(event){
    this.happy -=1;
    this.hungry +=0.5;
    this.strength +=2

    if (this.strength <= 15){
      this.imgPikachu = "https://pa1.narvii.com/6050/2d24531c9ac9751b9e9cda12cbac9bf532f42d99_hq.gif"
    }
  //  else if (this.strength >= 30) {
  //    this.imgPikachu = "https://media1.giphy.com/media/FQjAgnUBn0bv2/giphy.gif"
  //  }
    else {
      this.imgPikachu ="https://media.giphy.com/media/QJMviRTZtXOj6/giphy.gif"
    }

  }

  rest(event){
    this.happy = 50; <!--reset the numbers-->
    this.hungry = 20;
    this.strength = 20;
    let random = Math.random();
    if (random < 0.5) {
      this.imgPikachu = "https://media.giphy.com/media/iK4rg28Vg3A6Q/giphy.gif"
    }
    else{
      this.imgPikachu = "https://media.giphy.com/media/khMwtd5muCbK0/giphy.gif"
    }

  }

</pikachu>
