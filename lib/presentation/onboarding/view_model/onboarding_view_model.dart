import 'dart:async';

import 'package:clean_architecture/domain/Models.dart';
import 'package:clean_architecture/presentation/base/base_view_model.dart';
import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs, OnBoardingViewModelOutputs{
 /// stream controllers outputs
  final StreamController _streamController = StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  int _currentPageIndex = 0;


 ///OnBoarding ViewModel Inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // VIEW MODEL START YOUR JOB
    _list = _getSliderData();
    _postDataToView();

  }

  @override
  int goNext() {
    int nextIndex = ++_currentPageIndex;
    if(nextIndex == _list.length-1){
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentPageIndex;
    if(previousIndex == -1){
      previousIndex = _list.length-1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentPageIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;


  ///OnBoarding ViewModel Outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);



  /// onboarding private functions
  void _postDataToView(){
    inputSliderViewObject.add(SliderViewObject(
        _list[_currentPageIndex],
        _list.length,
        _currentPageIndex
    ));
  }


  List<SliderObject> _getSliderData() => [
    SliderObject(AppStrings.onBoardingSunTitle1, AppStrings.onBoardingSunTitle1, ImageAssets.onboardingLogo1),
    SliderObject(AppStrings.onBoardingSunTitle2, AppStrings.onBoardingSunTitle2, ImageAssets.onboardingLogo2),
    SliderObject(AppStrings.onBoardingSunTitle3, AppStrings.onBoardingSunTitle3, ImageAssets.onboardingLogo3),
    SliderObject(AppStrings.onBoardingSunTitle4, AppStrings.onBoardingSunTitle4, ImageAssets.onboardingLogo4),
  ];



}


///inputs mean that "Orders" that our view model will receive from view
abstract class OnBoardingViewModelInputs{
  int goNext(); // when user click on right arrow
  int goPrevious(); // when user click on left arrow
  void onPageChanged(int index);

  /// stream controller input
  Sink get inputSliderViewObject;
}


///outputs mean that "actions" that our view model will sent to view
abstract class OnBoardingViewModelOutputs{
  ///stream controller output
  Stream<SliderViewObject> get outputSliderViewObject;
}




