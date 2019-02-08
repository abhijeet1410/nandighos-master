import 'package:flutter/cupertino.dart';

class DrawerItems{
  Icon _icon;
  String _text;

  DrawerItems(this._icon, this._text);

  String get text => _text;

  set text(String value) {
    _text = value;
  }

  Icon get icon => _icon;

  set icon(Icon value) {
    _icon = value;
  }

}