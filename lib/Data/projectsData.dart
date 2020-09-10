import 'package:portfolio/models/project_info.dart';

class Data {
  List<ProjectInfo> listData = [];
  List<ProjectInfo> getProjectsData() {
    listData.add(ProjectInfo(
      projectName: "MathCrush",
      url: "abc.com",
      screenUrl1: "screen1",
      screenUrl2: "screen2",
      screenUrl3: "screen3",
      screenUrl4: "screen4",
    ));
    return listData;
  }
}
