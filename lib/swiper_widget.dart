import 'package:flutter/material.dart';
typedef NullableIndexedWidgetBuilder = Widget? Function(BuildContext context, int index);
class Swiper extends StatefulWidget {
  const Swiper(
      {super.key,required this.children,});
final List<Widget> children;

  @override
  State<Swiper> createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  final PageController _pageController = PageController(initialPage: 1);
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(1);
  List<Widget> list=[];

  @override
  void initState() {
    super.initState();
    var temp = widget.children;
    if(temp.length>1){
      list.add(temp[temp.length-1]);
      list.addAll(temp);
      list.add(temp[0]);
    }
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
    int listLength =list.length;
    debugPrint("_pageController=${_pageController.page},listLength=$listLength");
    if (_pageController.page == 0) {
      // When scrolling to the first page, jump to the last page
      _pageController.jumpToPage(listLength - 2);
    } else if (_pageController.page == listLength-1) {
      // When scrolling to the last page, jump to the first page
      _pageController.jumpToPage(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: PageView(
          controller: _pageController,
          children: list,
           onPageChanged: (index){
            _currentIndex.value =
            index == 0 ? list.length-2 : (index == list.length ? 0 : index - 1);
           }, ),
      );
    });
  }
}
