extension StringExtension on String? {
  bool get isNotNullOrNotEmpty {
    return this != null && this!.isNotEmpty;
  }
}
