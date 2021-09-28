import 'package:flutter/material.dart';

void main() {
  //runApp() 函数会持有传入的 Widget，并且使它成为 widget 树中的根节点。

/**
 * 在这个例子中，Widget 树有两个 widgets， Center widget 及其子 widget —— Text widget。
 * 框架会强制让根 widget 铺满整个屏幕，也就是说“Hello World”会在屏幕上居中显示
 * 
 * */
  const Center(
    child: Text(
      'Hello, World!',
      //TextDirection.ltr从左至右，TextDirection.rtl从右至左
      textDirection: TextDirection.ltr, //文本方向
      //在这个例子我们需要指定文字的方向，当使用 MaterialApp widget 时，你就无需考虑这一点，之后我们会进一步的描述。
    ),
  );
}

/**
 * 在写应用的过程中，取决于是否需要管理状态，你通常会创建一个新的组件继承 StatelessWidget 或 StatefulWidget。 
 * Widget 的主要工作是实现 build() 方法，该方法根据其它较低级别的 widget 来描述这个 widget。
 * 框架会逐一构建这些 widget，直到最底层的描述 widget 几何形状的 RenderObject。
 * */ 

//  基础 widgets
/**Flutter 自带了一套强大的基础 widgets，下面列出了一些常用的：
 * 1、Text
   Text widget 可以用来在应用内创建带样式的文本。
   2、Row, Column
   这两个 flex widgets 可以让你在水平 (Row) 和垂直(Column) 方向创建灵活的布局。它是基于 web 的 flexbox 布局模型设计的。
   3、Stack
   Stack widget 不是线性（水平或垂直）定位的，而是按照绘制顺序将 widget 堆叠在一起。你可以用 Positioned widget 作为Stack 的子 widget，
   以相对于 Stack 的上，右，下，左来定位它们。 Stack 是基于 Web 中的绝对位置布局模型设计的。
   4、Container
   Container widget 可以用来创建一个可见的矩形元素。 
   Container 可以使用 BoxDecoration 来进行装饰，如背景，边框，或阴影等。 
   Container 还可以设置外边距、内边距和尺寸的约束条件等。另外，Container可以使用矩阵在三维空间进行转换。

 * */ 