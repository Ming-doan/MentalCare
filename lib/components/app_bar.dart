import 'package:flutter/material.dart';
import 'package:mental_care/constants/constant.dart';

class AppBarContainer extends StatefulWidget {
  final String appBarTitle;
  final String? searchPrompt;
  final List<Widget>? actions;

  const AppBarContainer(
      {Key? key, required this.appBarTitle, this.searchPrompt, this.actions})
      : super(key: key);

  @override
  State<AppBarContainer> createState() => _AppBarContainerState();
}

class _AppBarContainerState extends State<AppBarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: AppBox.defaultShadow),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppBar(
            elevation: 0,
            title: Text(
              widget.appBarTitle,
              style: const TextStyle(fontWeight: AppText.semibold),
            ),
            backgroundColor: AppColor.monoWhite,
            foregroundColor: AppColor.monoBlack,
            shadowColor: AppColor.monoLight,
            actions: widget.actions,
          ),
          Container(
            color: AppColor.monoWhite,
            child: widget.searchPrompt != null
                ? Container(
                    margin: const EdgeInsets.only(
                        right: AppBox.defaultPadding,
                        left: AppBox.defaultPadding,
                        bottom: AppBox.defaultPadding),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.monoShade),
                        borderRadius:
                            BorderRadius.circular(AppBox.defaultRadius)),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(AppBox.smallPadding),
                          primary: AppColor.monoShade,
                          alignment: Alignment.topLeft),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            '${widget.searchPrompt}',
                            style: const TextStyle(color: AppColor.monoShade),
                          )),
                          const Icon(
                            Icons.search_rounded,
                            color: AppColor.monoShade,
                          )
                        ],
                      ),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
