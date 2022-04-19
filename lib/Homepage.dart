import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // double Sliderval = 0;
  String? groupValue = "India";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Widgets Practice"),
      ),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CupertinoButton(
            //   child: const Text("Done"),
            //   onPressed: () {},
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // CupertinoButton.filled(
            //   child: const Text("Ok"),
            //   onPressed: () {},
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // CupertinoButton(
            //   color: CupertinoColors.systemPurple,
            //   child: const Text("Cancel"),
            //   onPressed: () {},
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // const CupertinoActivityIndicator(
            //   radius: 20,
            //   color: CupertinoColors.link,
            // ),
            // CupertinoSlider(
            //   value: Sliderval,
            //   activeColor: CupertinoColors.activeGreen,
            //   thumbColor: CupertinoColors.activeOrange,
            //   min: 0,
            //   max: 1000,
            //   onChanged: (val) {
            //     setState(() {
            //       Sliderval = val;
            //     });
            //   },
            // ),
            // CupertinoContextMenu(
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     color: CupertinoColors.activeGreen,
            //   ),
            //   actions: <CupertinoContextMenuAction>[
            //     CupertinoContextMenuAction(
            //       child: const Text("First"),
            //       onPressed: () {},
            //     ),
            //     CupertinoContextMenuAction(
            //       child: const Text("Second"),
            //       onPressed: () {},
            //     ),
            //     CupertinoContextMenuAction(
            //       child: const Text("Third"),
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
            CupertinoSlidingSegmentedControl(
              groupValue: groupValue,
              children: const {
                'India': Text("India"),
                'USA': Text("USA"),
                'canada': Text("Canada"),
              },
              onValueChanged: (val) {
                groupValue = val as String?;
                setState(() {});
              },
            ),
            // CupertinoButton(
            //   color: CupertinoColors.destructiveRed,
            //   child: const Text("Exit"),
            //   onPressed: () {
            //     showCupertinoDialog<void>(
            //       context: context,
            //       builder: (BuildContext context) => CupertinoAlertDialog(
            //         content: const Text(
            //           'Are You Sure Want to Exit ?',
            //           style: TextStyle(
            //             fontSize: 16,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         actions: [
            //           CupertinoDialogAction(
            //             child: const Text('Yes'),
            //             onPressed: () {},
            //           ),
            //           CupertinoDialogAction(
            //             child: const Text('No'),
            //             isDestructiveAction: true,
            //             onPressed: () {},
            //           )
            //         ],
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
