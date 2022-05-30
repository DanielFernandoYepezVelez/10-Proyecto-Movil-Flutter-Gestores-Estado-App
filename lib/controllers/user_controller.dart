import 'package:get/get.dart';

/* Models */
import 'package:app_state_flutter/models/models.dart';

class UserController extends GetxController {
  RxBool isUserExist = false.obs;
  Rx<UserModel> user = UserModel().obs;

  int get countProfessions => user.value.professions.length + 1;

  void loadUser(UserModel user) {
    isUserExist.value = true;
    this.user.value = user;
  }

  void changeAge(String age) {
    user.update((value) {
      value!.age = age;
    });
  }

  void adProfession(String profession) {
    user.update((val) {
      val!.professions = [...val.professions, profession];
    });
  }
}
