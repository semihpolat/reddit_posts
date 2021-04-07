import 'package:app_nation/logic/model/reddit_model.dart';
import 'package:app_nation/logic/services/api_service.dart';
import 'package:get/state_manager.dart';

class RedditController extends GetxController {
  var isLoading = true.obs;
  Rx<Welcome> xModel = Rx<Welcome>();
  Welcome get dataX => xModel.value;
  @override
  void onInit() {
    fetchAPI();
    super.onInit();
  }

  void fetchAPI() async {
    try {
      isLoading(true);
      var xVars = await ApiServices.getRedditPosts();
      if (xVars != null) {
        xModel.value = xVars;
      }
    } finally {
      isLoading(false);
    }
  }
}
