import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_study/home.dart';
import 'package:riverpod_study/log.dart';
import 'package:riverpod_study/me.dart';
import 'package:riverpod_study/me/theme_controller.dart';
import 'package:riverpod_study/practice.dart';
import 'package:riverpod_study/ui/themes.dart';
part 'main.g.dart';
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
final dir = await getApplicationDocumentsDirectory();
debugPrint("Hello,dir=$dir");
Hive.init(dir.path);
  runApp(ProviderScope(
    observers: [ProvidersLogger()],
      child:const TheApp() ));
}

class TheApp extends ConsumerWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String themeMode = ref.watch(asyncThemeNotifierProvider).value??lightMode;
    final Color color= ref.watch(themeColorNotifierProvider);
    debugPrint("themeMode===$themeMode");
    return MaterialApp(
      themeMode: themeMode==lightMode?ThemeMode.light:ThemeMode.dark,
      theme: themeMode==lightMode?ThemeData(useMaterial3: true,colorScheme:ColorScheme.fromSeed(seedColor: color)):AppTheme.darkTheme,
      home: const MyHomePage(),);
  }
}
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Center(
          child: Text(value),
        ),
      ),
    );
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text('data'),),body: Center(child: Text(value),),),);
  }

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       // This is the theme of your application.
  //       //
  //       // TRY THIS: Try running your application with "flutter run". You'll see
  //       // the application has a purple toolbar. Then, without quitting the app,
  //       // try changing the seedColor in the colorScheme below to Colors.green
  //       // and then invoke "hot reload" (save your changes or press the "hot
  //       // reload" button in a Flutter-supported IDE, or press "r" if you used
  //       // the command line to start the app).
  //       //
  //       // Notice that the counter didn't reset back to zero; the application
  //       // state is not lost during the reload. To reset the state, use hot
  //       // restart instead.
  //       //
  //       // This works for code too, not just values: Most code changes can be
  //       // tested with just a hot reload.
  //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  //       useMaterial3: true,
  //     ),
  //     home: const MyHomePage(title: 'Flutter Demo Home Page'),
  //   );
  // }
}
class MyNotification extends Notifier<int>{
  @override
  int build() =>0;
  void increment()=>state++;

}
@riverpod
class ClickCountX extends _$ClickCountX {
  @override
  int build() => 0;
  void increment(){
    state++;
  }
}

final clickCountProvider = StateProvider<int>((ref)=>0);

class HelloTest1 extends ConsumerWidget {
  const HelloTest1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   var count =  ref.watch(clickCountProvider);
   var x = ref.watch(clickCountXProvider);
    return Scaffold(appBar: AppBar(title: Text(''),),
    body: Column(children: [
      Text('$count'),
      ElevatedButton(onPressed: (){
        ref.read(clickCountProvider.notifier).state++;
      }, child: Text('点击')),
      Text('$x'),
      ElevatedButton(onPressed: (){
        ref.read(clickCountXProvider.notifier).increment();
      }, child: Text('点击'))

    ],),);
  }
}

class HelloTest extends ConsumerStatefulWidget {
  const HelloTest({super.key});

  @override
  ConsumerState createState() => _HelloTestState();
}

class _HelloTestState extends ConsumerState<HelloTest> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class BottomTabState extends Notifier<int>{
  @override
  int build()=>0;
  void setCurrentIndex(int index){
    state = index;
  }

}
final bottomTabStateProvider = NotifierProvider<BottomTabState, int>(BottomTabState.new);


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final currentIndex = ref.watch(bottomTabStateProvider);
      return Scaffold(
        body: PageView(
          controller: _pageController,
          children: const [HomePage(), PracticePage(),MePage()],
          onPageChanged: (index){
            ref.read(bottomTabStateProvider.notifier).setCurrentIndex(index);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              ref.read(bottomTabStateProvider.notifier).setCurrentIndex(index);
              _pageController.jumpToPage(index);
            },
            selectedItemColor: Theme.of(context).colorScheme.primary, // 使用主题颜色
            unselectedItemColor:
                Theme.of(context).colorScheme.onSurface, // 未选中项颜色
            backgroundColor: Theme.of(context).colorScheme.surface,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.spoke), label: 'Practice'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Me')
            ]),
      );
    });
  }
}
