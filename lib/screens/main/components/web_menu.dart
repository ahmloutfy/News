import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/menu_controllers.dart';

class WebMenu extends StatelessWidget {
  final ControllerOfMenu _controller =
      Get.put<ControllerOfMenu>(ControllerOfMenu());

  WebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
          children: List.generate(
        _controller.menuItems.length,
        (index) => WebMenuItem(
          text: _controller.menuItems[index],
          isActive: index == _controller.selectedIndex,
          press: () => _controller.setMenuItems(index),
        ),
      )),
    );
  }
}

class WebMenuItem extends StatefulWidget {
  final bool isActive;
  final String text;
  final VoidCallback press;

  const WebMenuItem({
    super.key,
    required this.isActive,
    required this.text,
    required this.press,
  });

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.all(kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 3,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
