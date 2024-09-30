import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_study/me/theme_controller.dart';
import 'package:riverpod_study/ui/themes.dart';

class MePage extends ConsumerStatefulWidget {
  const MePage({super.key});

  @override
  ConsumerState createState() => _MePageState();
}

class _MePageState extends ConsumerState<MePage> {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.amber,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Me'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                alignment: Alignment.center,
                color:  ref.watch(themeColorNotifierProvider).withOpacity(0.1),
                child: Icon(
                  Icons.account_circle,
                  size: 50,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('深色模式'),
                  Switch(
                      value: (ref.watch(asyncThemeNotifierProvider).value ==
                          darkMode),
                      onChanged: (v) {
                        ref.read(asyncThemeNotifierProvider.notifier).toggle(v);
                      })
                ],
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child:Padding(padding: EdgeInsets.all(20),child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 0,
                              runSpacing: 20,
                              children: colors
                                  .map((e) => TextButton(
                                  onPressed: () {
                                    ref
                                        .read(themeColorNotifierProvider
                                        .notifier)
                                        .selectColor(e);
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    color: e,
                                  )))
                                  .toList(),
                            ),) ,
                          );
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('选择主题'),
                      Container(
                        width: 20,
                        height: 20,
                        color: ref.watch(themeColorNotifierProvider),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
