class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  // get
  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  // main
  sliderModel.setDesc("");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/logo.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //0
  sliderModel.setDesc(
      "Praesent ultrices vitae nisi in tempor. Sed et nibh congue, tempus odio accumsan, fringilla tellus.");
  sliderModel.setTitle("Post your application");
  sliderModel.setImageAssetPath("assets/Image-05.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "Praesent ultrices vitae nisi in tempor. Sed et nibh congue, tempus odio accumsan, fringilla tellus.");
  sliderModel.setTitle("Broadcast your application");
  sliderModel.setImageAssetPath("assets/Image-06.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  //2
  sliderModel.setDesc(
      "Praesent ultrices vitae nisi in tempor. Sed et nibh congue, tempus odio accumsan, fringilla tellus. ");
  sliderModel.setTitle("Choose the best deal");
  sliderModel.setImageAssetPath("assets/Image-07.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Praesent ultrices vitae nisi in tempor. Sed et nibh congue, tempus odio accumsan, fringilla tellus. ");
  sliderModel.setTitle("Get your application approved");
  sliderModel.setImageAssetPath("assets/Image-08.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}
