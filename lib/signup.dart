import 'package:estshara/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'signup2.dart';

class SIGNUP extends StatefulWidget {
  String type;

  SIGNUP(this.type);

  @override
  _SIGNUPState createState() => _SIGNUPState();
}
int kind = 0;

class _SIGNUPState extends State<SIGNUP> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var birthDateController = TextEditingController();
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();
  String phone;
  String phone2='0';

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: sHeight,
          width: sWidth,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/LOGIN-bk.png',
                width: sWidth,
                fit: BoxFit.fill,
              ),
              //LOGO
              //ENTER NOW
              //Form
              Column(
                children: [
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        IconButton(icon: Icon(Icons.chevron_left,size: 40,), onPressed: (){Navigator.pop(context);})
                      ],
                    ),
                  ),
                  Container(
                    width: sWidth,
                    height: sHeight-90 ,
                    margin: EdgeInsets.only(top: 40,left: 15,right: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: sWidth * .01,
                          ),
                          Text(
                            '?????????? ???????? ????????????',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff262460),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: sWidth * .03,
                          ),
                          //?????? ??????????????
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '?????? ??????????????',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                  fontSize: 18,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                height: sHeight * .07,
                                width: sWidth * .72,
                                child: TextField(
                                  controller: nameController,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30),
                                        ),
                                      borderSide: BorderSide(
                                        color: Colors.cyan
                                      )
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),

                                    ),
                                    hintText:
                                        '?????? ????????????????',
                                    hintTextDirection: TextDirection.rtl
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //???????????? ????????????????????
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '???????????? ????????????????????',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                  fontSize: 18,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                                height: sHeight * .07,
                                width: sWidth * .72,
                                child: TextField(
                                  controller: emailController,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    hintText:
                                    '                                              ???????????? ????????????????????',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // ???????? ????????????
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '???????? ????????????',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                height: sHeight * .07,
                                width: sWidth * .72,
                                child: TextField(
                                  obscureText:true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  controller: passController,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    hintText:
                                        '???????? ????????????',
                                      hintTextDirection: TextDirection.rtl
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //???????? ???????????? ??????????
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '?????????? ???????? ????????????',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                  fontSize: 18,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                height: sHeight * .07,
                                width: sWidth * .72,
                                child: TextField(
                                  obscureText:true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  controller: confirmPassController,
                                  textDirection: TextDirection.rtl,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      hintText:
                                      '???????? ????????????',
                                      hintTextDirection: TextDirection.rtl
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //phone 1
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '????????????',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                  fontSize: 18,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))),
                                height: sHeight * .07,
                                width: sWidth * .72,
                                child: IntlPhoneField(
                                  decoration: InputDecoration(
                                    labelText: 'Phone Number',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.cyan),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    // enabledBorder: OutlineInputBorder(
                                    //     borderSide: BorderSide(color: Colors.cyan),
                                    //     borderRadius:
                                    //     BorderRadius.all(Radius.circular(20))),
                                    // focusedBorder: OutlineInputBorder(
                                    //     borderSide: BorderSide(color: Colors.cyan),
                                    //     borderRadius:
                                    //     BorderRadius.all(Radius.circular(20))),
                                    // disabledBorder: OutlineInputBorder(
                                    //     borderSide: BorderSide(color: Colors.cyan),
                                    //     borderRadius:
                                    //     BorderRadius.all(Radius.circular(20))),

                                  ),
                                  initialCountryCode: 'LY',
                                  onChanged: (num) {
                                    print(num.completeNumber);
                                    setState(() {
                                      phone = num.completeNumber;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          //gender & year
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '??????????',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cairo',
                                          fontSize: 18,
                                          color: Colors.black54,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(color: Colors.blueAccent),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                          height: sHeight * .07,
                                          width: sWidth * .35,
                                        child: kind==0?Row(
                                          children: [
                                            Expanded(
                                              flex:2,
                                                child: InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      kind=1;
                                                    });
                                                  },
                                                    child: Text("????????",textAlign: TextAlign.center,))),
                                            Expanded(
                                              flex: 3,
                                              child: InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    kind=0;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.cyan,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(25))),
                                                  height: sHeight * .07,
                                                  width: sWidth * .21,
                                                  child: Center(child: Text("??????")),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ):Row(
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    kind=1;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.cyan,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(25))),
                                                  height: sHeight * .07,
                                                  width: sWidth * .21,
                                                  child: Center(child: Text("????????")),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                flex:2,
                                                child: InkWell(
                                                    onTap: (){
                                                      setState(() {
                                                        kind=0;
                                                      });
                                                    },
                                                    child: Text("??????",textAlign: TextAlign.center,))),
                                          ],
                                        ),
                                        ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: sWidth * .03,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '?????? ??????????????',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cairo',
                                          fontSize: 18,
                                          color: Colors.black54,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        height: sHeight * .07,
                                        width: sWidth * .35,
                                        child: TextField(
                                          controller: birthDateController,
                                          keyboardType: TextInputType.number,
                                          textDirection: TextDirection.rtl,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30))),
                                            hintText: '            ?????? ??????????????',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 10,),
                          //button
                          Container(
                            height: sHeight * .06,
                            width: sWidth * .72,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  height: sHeight * 1, width: sWidth * 1),
                              child: ElevatedButton(
                                child: Text(
                                  '????????????',
                                  style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: 20,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  elevation: 20,
                                  primary: Colors.cyan,
                                  onPrimary: Colors.orangeAccent,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                                ),
                                onPressed: () {

                                  if(nameController.text.isNotEmpty && emailController.text.isNotEmpty && passController.text.isNotEmpty && confirmPassController.text.isNotEmpty && birthDateController.text.isNotEmpty && phone2!=null && phone!=null) {

    if( passController.text==confirmPassController.text)
    {Navigator.push(context, MaterialPageRoute(
        builder: (context) =>
            SignUp2(
                nameController.text,
                emailController.text,
                passController.text,
                confirmPassController.text,
                phone,
                phone2,
                birthDateController.text,
                kind == 0 ? "male" : "female",
                widget.type)));}
    else{
      var snackBar = SnackBar(content: Text('?????????? ???????????? ??????  ??????????????'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
                                  }else{
                                    var snackBar = SnackBar(content: Text('???? ???????? ???????? ???????? ????????????'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //back to login page
              // Positioned(
              //   top: sHeight * .95,
              //   right: sWidth * .28,
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => Login()));
              //     },
              //     child: Text.rich(
              //       TextSpan(
              //         style: TextStyle(
              //           fontFamily: 'Cairo',
              //           fontSize: 17,
              //           color: const Color(0xff606060),
              //         ),
              //         children: [
              //           TextSpan(
              //             text: '??????  ?????? ????????  ???????? ??',
              //           ),
              //           TextSpan(
              //             text: '?????????? ????????',
              //             style: TextStyle(
              //               color: const Color(0xff52b1f8),
              //             ),
              //           ),
              //         ],
              //       ),
              //       textHeightBehavior:
              //           TextHeightBehavior(applyHeightToFirstAscent: false),
              //       textAlign: TextAlign.left,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
