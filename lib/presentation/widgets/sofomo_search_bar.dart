import 'dart:async';

import 'package:flutter/material.dart';

class SofomoSearchBar extends StatefulWidget {
  const SofomoSearchBar({super.key, this.onTextChanged, this.hintText});

  final void Function(String text)? onTextChanged;
  final String? hintText;

  @override
  State<SofomoSearchBar> createState() => _SofomoSearchBarState();
}

class _SofomoSearchBarState extends State<SofomoSearchBar> {
  late TextEditingController _searchBarController;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _searchBarController = TextEditingController();
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: _searchBarController,
      onChanged: (value) {
        if (_debounce?.isActive ?? false) _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 500), () {
          widget.onTextChanged?.call(value);
        });
      },
      hintText: widget.hintText,
    );
  }
}
