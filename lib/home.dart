import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_study/custom_bar_chart.dart';
import 'package:riverpod_study/swiper_widget.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class User with _$User {
  factory User(
      {required String username,
      required int age,
      required String gender}) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@riverpod
Future<User> user(UserRef ref) async {
  await Future.delayed(const Duration(milliseconds: 2000), () {});
  var map = {'username': 'J', 'age': 20, 'gender': 'male'};
  return User.fromJson(map);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    List<String> x = [
      'NotifierProvider',
      'AsyncNotifierProvider',
      'FutureProvider',
      'StreamProvider'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Text('Provider'), Test1(), Test2(), Test3(),Test4(),BarChart(),Test6(),Test7(),Container(
            margin: EdgeInsets.only(top: 20),
            height: 200,
            child:Swiper(children: [ Container(
              height: 200,
              width: 300,
              color: Colors.green,
              child: Text('index=1'),
            ),
              Container(
                height: 200,
                width: 300,
                color: Colors.amber,
                child: Text('2'),
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.pinkAccent,
                child: Text('3'),
              ),],),
      ),]))
    );
  }
}

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Consumer(builder: (context, ref, _) {
      final AsyncValue<User> user = ref.watch(userProvider);
      return Container(
        height: 100,
        width: screenWidth,
        alignment: Alignment.center,
        child: user.when(
            data: (value) => Text(value.username),
            error: (error, _) => const Text('error'),
            loading: () => Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const CircularProgressIndicator(),
                )),
      );
    });
  }
}

class Test2 extends ConsumerWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenWidth = MediaQuery.of(context).size.width;
    final AsyncValue<User> user = ref.watch(userProvider);
    return Container(
      height: 100,
      width: screenWidth,
      alignment: Alignment.center,
      child: user.when(
          data: (value) => Text('${value.username},age is ${value.age}'),
          error: (error, _) => const Text('error'),
          loading: () => Container(
                alignment: Alignment.center,
                width: 20,
                height: 20,
                child: const CircularProgressIndicator(),
              )),
    );
  }
}

class Test3 extends ConsumerStatefulWidget {
  const Test3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Test3State();
}

class _Test3State extends ConsumerState<Test3> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(userProvider, (pre, next) {
      debugPrint('pre=$pre,next=$next');
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    final AsyncValue<User> user = ref.watch(userProvider);
    return Container(
      height: 100,
      width: screenWidth,
      alignment: Alignment.center,
      child: user.when(
          data: (value) => Text(
              '${value.username},age is ${value.age},gender is ${value.gender}'),
          error: (error, _) => const Text('error'),
          loading: () => Container(
                alignment: Alignment.center,
                width: 20,
                height: 20,
                child: const CircularProgressIndicator(),
              )),
    );
  }
}

@freezed
class Todo with _$Todo {
  factory Todo({
    required String description,
    @Default(false) bool completed,
  }) = _Todo;
}

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<List<Todo>> build() async {
    // 我们之前在 FutureProvider 中的业务逻辑现在位于 build 方法中。
    return [
      Todo(description: 'Learn Flutter', completed: true),
      Todo(description: 'Learn Riverpod'),
    ];
  }
    Future<void> addTodo(Todo todo) async {
      Future.delayed(Duration(milliseconds: 2000),(){

      });
    // ref.invalidateSelf();
    final prev = await future;
    state = AsyncData([...prev,todo]);
    ref.notifyListeners();
  }
}
class Test4 extends HookConsumerWidget {
  const Test4({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoListProvider);
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              ref
                  .read(todoListProvider.notifier)
                  .addTodo(Todo(description: 'test todo '));
            },
            child: Text('Add todo')),
        todos.when(
            data: (value) => Column(
                children: value
                    .map<Widget>((e) => Text('${e.description}'))
                    .toList()),
            error: (error, _) => const Text('error'),
            loading: () => Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const CircularProgressIndicator(),
                )),
      ],
    );
  }
}

class Test5 extends StatefulHookConsumerWidget {
  const Test5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Test5State();
}

class _Test5State extends ConsumerState<Test5> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Test6 extends StatefulWidget {
  const Test6({super.key});

  @override
  State<Test6> createState() => _Test6State();
}

class _Test6State extends State<Test6> {
  PageController _pageController = PageController(initialPage: 1);
   final ValueNotifier<int> _currentIndex = ValueNotifier<int>(1);
  int currentIndex = 1;
  int realIndex = 0;
  int length = 5;
  @override
  void initState() {
    super.initState();
        _pageController.addListener(_handlePageChange);
  }
    @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    _pageController.dispose();
    _currentIndex.dispose();
    super.dispose();
  }

  void _handlePageChange() {
    if (_pageController.page == 0) {
      // When scrolling to the first page, jump to the last page
      _pageController.jumpToPage(4);
    } else if (_pageController.page == 5) {
      // When scrolling to the last page, jump to the first page
      _pageController.jumpToPage(1);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(width: 300,height: 200,child: PageView(
            controller: _pageController,
            onPageChanged: (index){
              _currentIndex.value = index == 0 ? 4 : (index == 5 ? 1 : index);
            },
            children: [
              Container(
                height: 200,
                width: 300,
                color: Colors.red,
                child: Text('index=0,real=4,最后一个页面'),
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.green,
                child: Text('index=1'),
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.amber,
                child: Text('2'),
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.pinkAccent,
                child: Text('3'),
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.red,
                child: Text('4'),
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.green,
                child: Text('index=5 real=0,第一个页面'),
              ),
            ],
          ),);
  }
}

//*****************NotifierProvider**********************
class ClickCount extends Notifier<int>{
  @override
  int build()=>0;
  void increment(){
    state++;
  }
}
final clickCountProvider = NotifierProvider<ClickCount,int>(()=>ClickCount());

//*****************riverpod**********************
@riverpod
class ClickCountX extends _$ClickCountX {
  @override
  int build()=>0;
  void increment(){
    state++;
  }
}

class Test7 extends ConsumerWidget {
  const Test7({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var clickCount = ref.watch(clickCountProvider);
    var clickCountX = ref.watch(clickCountXProvider);
    return Row(children: [
      ElevatedButton(onPressed:(){
        ref.read(clickCountProvider.notifier).increment();
        ref.read(clickCountXProvider.notifier).increment();

      }, child:Text('increment'),),
      SizedBox(width: 10,),
      Text('$clickCount,${clickCountX}')
    ],);
  }
}

