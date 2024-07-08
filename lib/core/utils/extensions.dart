import 'packages.dart';

extension StringExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  SvgPicture toSvg({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) {
    return SvgPicture.asset(
      'assets/vectors/$this.svg',
      width: width,
      height: height,
      // ignore: deprecated_member_use
      color: color,
      fit: fit ?? BoxFit.contain,
    );
  }

  Image pngPicture({
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.asset(
      'assets/images/$this.png',
      width: width ?? 40,
      height: height ?? 40,
      fit: fit,
    );
  }
}
