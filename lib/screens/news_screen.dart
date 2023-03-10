import 'package:flutter/material.dart';
import 'package:news/constants/constants.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            actions: [
              LimitedBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/short-menu-vertical.png',
                        height: 26,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Image.asset(
                        'assets/images/frame.png',
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/arrow-right.png',
                      ),
                    ],
                  ),
                ),
              )
            ],
            toolbarHeight: 320,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/taremi_news.png',
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              child: Container(
                height: 14,
                decoration: BoxDecoration(
                  color: mainBlack,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(10),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 34,
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '?????????? ??????',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: mainGray,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '??',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: mainGray,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 116,
                    height: 26,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '???????????????? ?????????? ??????',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 8,
                            fontFamily: 'SM',
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Image.asset('assets/images/khabar-logo.png'),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '?????????????? ????????????',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 10,
                          color: mainGray,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Image.asset(
                        'assets/images/flash-circle.png',
                        fit: BoxFit.cover,
                        width: 18,
                        height: 16,
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
        body: SingleChildScrollView(
          child: _getMainBodyContent(),
        ),
      ),
    );
  }

  Column _getMainBodyContent() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 24,
            right: 24,
          ),
          child: Text(
            "?????????????? ???????????? ???????????????????? ?????? ???????????? ?????????? ?????? ?????????? ???? ?????? ??????????",
            textAlign: TextAlign.end,
            style: TextStyle(
              height: 1.6,
              fontSize: 20,
              color: backColor,
              fontFamily: 'SB',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _getLabelItem('???????????? ??????????'),
              _getLabelItem('???????????? ????'),
              _getLabelItem('??????????'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            '???????????? ???????? ???? ?????????? ?????? ???????? ?????????? ???????????? ?????????? ?????????? ???? ?????????? ???????? ???????????? ?????????? ?????????? ???? ?? ?????? ?????????????? ???????????? ?????????? ???????? ???? ?????? ???????? ???????????? ???????? ???? ???????????? ???????????? ??????',
            textAlign: TextAlign.end,
            style: TextStyle(
              height: 1.6,
              color: mainGray,
              fontSize: 14,
              fontFamily: 'SB',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 24,
            top: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        '?????? ?????????????? ???????????? ?????????? ???????????????? ???? ?????????????? ?????????? ???????? ?????????? ???????????????? ???? ???????????????? ?????????????????? ???????????? ?? ???????????????????????? ???????????????????? ???????????? ???????????? ???? ????????????????? ???????? ???????????????? ???? ?????? ??????. ?????? ?????? ???? ???????? ????????????????? ???? ???? ???????? ??????????? ???????? ???????? ?????? ?????????? ???????? ???? ???????????? ???????? ???? ???? ?????????? ?????????????? ???????? ?????? ???????????????? ?????????????? ???????????? ???? ?????? ???????????????????? ?????????? ???????? ???? ???????????? ?????? ?? ???? ?????????? ???? ???????? ???? ?????????????? ???????????? ?? ?????????????? ???????? ???? ?????????????? ???????? ???? ?????????? ???? ?????????? ??????????',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: mainGray,
                          fontSize: 14,
                          height: 1.6,
                          fontFamily: 'SM',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '?????????????? ???? ?????????? ???????????????????????? ???? ???????????? ?????????????? ???????????? ?? ???? ???????????? ???????????????? ???????? ???????????? ???? ?????????? ???????? ?? ???? ???? ???? ???????? ???????????????? ?????????? ???? ???? ???????????? ??????????. ?????????? ???? ?????????????? ?????????????? ???? ???????? ?????????? ???????????????? ???????? ?????? ?? ?????????? ???????? ????. ???? ???????? ???????? ?????? ?????????????? ???????? ?????? ???? ?????????? ???????????????? ?????????????? ?????? ???????? ?????????? ?? ???????????????? ???????????? ?????????????? ??',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: mainGray,
                          fontSize: 14,
                          height: 1.6,
                          fontFamily: 'SM',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 2,
                height: 280,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _getLabelItem(String labelName) => Container(
        margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(0xff313666),
        ),
        child: Center(
          child: Text(
            labelName,
            style: TextStyle(
              fontFamily: 'SB',
              color: backColor,
              fontSize: 10,
            ),
          ),
        ),
      );
}
