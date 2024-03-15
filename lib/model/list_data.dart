import '../gen/assets.gen.dart';

class ListDataModel {
  String timeData;
  String imageData;
  String degreeData;

  ListDataModel(
      {required this.timeData,
      required this.imageData,
      required this.degreeData});
}


List<ListDataModel> myData = [

  ListDataModel(timeData: "8:20", imageData: Assets.images.cloudy.path, degreeData: "8 oC"),
  ListDataModel(timeData: "9:12", imageData: Assets.images.storm.path, degreeData: "10 oC"),
  ListDataModel(timeData: "10:32", imageData: Assets.images.snowy.path, degreeData: "15 oC"),
  ListDataModel(timeData: "1:40", imageData: Assets.images.freezing.path, degreeData: "-2 oC"),
  ListDataModel(timeData: "9:12", imageData: Assets.images.storm.path, degreeData: "10 oC"),



];