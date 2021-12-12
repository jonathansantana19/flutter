import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hello/controller/profile_controller.dart';
import 'package:hello/view/widgets/custom_text.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) => controller.loading.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              body: Container(
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Colors.red,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/avatar1.png'),
                                  //  image: controller.userModel == null ?
                                  //     AssetImage('assets/images/avatar.png'): NetworkImage(controller.userModel.urlImage.toString())
                                  fit: BoxFit.fill),
                            ),
                          ),
                          //  FlatButton(
                          //    onPressed: (){

                          //    }, child: null,
                          //   )
                          Column(
                            children: [
                              CustomText(
                                text: 'testeUser',
                                color: Colors.black,
                                fontSize: 32,
                              ),
                              CustomText(
                                text: 'testeUser@gmail.com',
                                color: Colors.black,
                                fontSize: 24,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Edit Perfil',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Endereço',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Histórica de Compras',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Cartões',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Notificações',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Sair',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Edit Perfil',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Edit Perfil',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Edit Perfil',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Edit Perfil',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          title: CustomText(
                            text: 'Edit Perfil',
                          ),
                          leading: Image.asset('assets/images/avatar1.png'),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.black
                            ),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
    );
  }
}
