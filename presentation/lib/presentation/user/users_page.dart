import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_2/presentation/user/users_controller.dart';
import 'package:test_2/resources/text_styles.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return UsersPageState();
  }
}

class UsersPageState extends State<UsersPage> {
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();

    Get.put(UsersController());
    UsersController usersController = Get.find();
    usersController.getUsers();

    scrollController.addListener(() {
      var maxScroll = scrollController.position.maxScrollExtent;
      var currentScroll = scrollController.position.pixels;
      if (currentScroll >= maxScroll) {
        usersController.getNexUsers();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    UsersController usersController = Get.find();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Obx(
          () => usersController.isLoading.value
              ? Column(
                  children: const [CircularProgressIndicator()],
                )
              : ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    var user = usersController.users[index];
                    return Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: user.picture != null
                                ? Image(
                                    image: NetworkImage(user.picture!),
                                  )
                                : SizedBox(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user.firstName,
                                style: TextStyles.signikaRegular18,
                              ),
                              Text(
                                user.lastName,
                                style: TextStyles.signikaRegular18,
                              ),
                            ],
                          ))
                        ],
                      ),
                    );
                  },
                  itemCount: usersController.users.length,
                ),
        ),
      ),
    );
  }
}
