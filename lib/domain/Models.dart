
/// onboarding Models
class SliderObject{
  String title;
  String subTitle;
  String image;

  SliderObject(this.title,this.subTitle,this.image);
}


class SliderViewObject{
  SliderObject sliderObject;
  int numberOflides;
  int currentIndex;
  SliderViewObject(this.sliderObject,this.numberOflides,this.currentIndex);
}