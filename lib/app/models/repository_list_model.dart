import 'package:flutter/material.dart';
import 'parents/model.dart';

class Slide extends Model {
  int? _order;
  String? _text;
  String? _button;
  String? _textPosition;
  Color? _textColor;
  Color? _buttonColor;
  Color? _backgroundColor;
  Color? _indicatorColor;
  String? _imageFit;
  bool? _enabled;

  Slide(
      {String? id,
      int? order,
      String? text,
      String? button,
      String? textPosition,
      Color? textColor,
      Color? buttonColor,
      Color? backgroundColor,
      Color? indicatorColor,
      String? imageFit,
      bool? enabled}) {
    _order = order;
    _text = text;
    _button = button;
    _textPosition = textPosition;
    _textColor = textColor;
    _buttonColor = buttonColor;
    _backgroundColor = backgroundColor;
    _indicatorColor = indicatorColor;
    _imageFit = imageFit;
    _enabled = enabled;
    this.id = id;
  }

  Slide.fromJson(Map<String, dynamic> json) {
    super.fromJson(json);
    _order = intFromJson(json, 'order');
    _text = transStringFromJson(json, 'text');
    _button = transStringFromJson(json, 'button');
    _textPosition = stringFromJson(json, 'text_position');
    _textColor = colorFromJson(json, 'text_color');
    _buttonColor = colorFromJson(json, 'button_color');
    _backgroundColor = colorFromJson(json, 'background_color');
    _indicatorColor = colorFromJson(json, 'indicator_color');
    _imageFit = stringFromJson(json, 'image_fit');
    _enabled = boolFromJson(json, 'enabled');
  }

  int? get order => _order;

  set order(int? order) => _order = order;

  String? get text => _text;

  set text(String? text) => _text = text;

  String? get button => _button;

  set button(String? button) => _button = button;

  String? get textPosition => _textPosition;

  set textPosition(String? textPosition) => _textPosition = textPosition;

  Color? get textColor => _textColor;

  set textColor(Color? textColor) => _textColor = textColor;

  Color? get buttonColor => _buttonColor;

  set buttonColor(Color? buttonColor) => _buttonColor = buttonColor;

  Color? get backgroundColor => _backgroundColor;

  set backgroundColor(Color? backgroundColor) => _backgroundColor = backgroundColor;

  Color? get indicatorColor => _indicatorColor;

  set indicatorColor(Color? indicatorColor) => _indicatorColor = indicatorColor;


  String? get imageFit => _imageFit;

  set imageFit(String? imageFit) => _imageFit = imageFit;


  bool? get enabled => _enabled;

  set enabled(bool? enabled) => _enabled = enabled;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this._text;
    return data;
  }
}
