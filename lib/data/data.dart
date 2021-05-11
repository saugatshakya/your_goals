class SliderModel{
  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath,this.title,this.desc});
  @override toString() => 'SliderModel: $imagePath,$title,$desc';

  void setImageAssetPath(String getImagepath){
    imagePath = getImagepath;
  }
  void setTitle(String getTitle){
  title = getTitle;
  }
  void setDesc(String getDesc){
    desc = getDesc;
  }
  String getImageAssetPath(){
    return imagePath;
  }
  String getTitle(){
    return title;
  }
  String getDesc(){
    return desc;
  }
}

List<SliderModel> getSlides(){
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  sliderModel.setImageAssetPath("assets/intro.gif");
  sliderModel.setTitle("DEAR SUNSHINE, BLOW YOUR CANDELS");
  sliderModel.setDesc("These are my wishes for you");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  sliderModel.setImageAssetPath("assets/first.gif");
  sliderModel.setTitle("I wish for all your wishes");
  sliderModel.setDesc("May you get to celebrate many more birthdays with friends and family who love and care for you unconditionally!!");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  sliderModel.setImageAssetPath("assets/second.gif");
  sliderModel.setTitle("Never Lose This Smile");
  sliderModel.setDesc("May you always have reasons to smile and be happy and even if your days do get bad you should know you have people who care for you and love you unconditionally!!");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  sliderModel.setImageAssetPath("assets/third.gif");
  sliderModel.setTitle("You'll Always be Beautiful");
  sliderModel.setDesc("May you reach places you have always dreamt of and believe me no one and nothing will ever weigh you down, cause you are awesomely strong");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  sliderModel.setImageAssetPath("assets/Fourth.gif");
  sliderModel.setTitle("Never Lose Hope");
  sliderModel.setDesc("Sometimes days will go hard, people will change and things will not go as planned but don't lose hope, Focus on small steps, one goal at a time and always keep moving forward and everything will work out great, Believe me");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  sliderModel.setImageAssetPath("assets/final.gif");
  sliderModel.setTitle("Happy Birthday Minusha Gurung");
  sliderModel.setDesc("");
  slides.add(sliderModel);
  return slides;
}

