import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dio/dio.dart';

class DDropdown extends StatefulWidget {
  const DDropdown({Key? key}) : super(key: key);

  @override
  _DDropdownState createState() => _DDropdownState();
}

class _DDropdownState extends State<DDropdown> {
  final _formKey = GlobalKey<FormState>();
  final _openDropDownProgKey = GlobalKey<DropdownSearchState<String>>();
  final _multiKey = GlobalKey<DropdownSearchState<String>>();
  final _userEditTextController = TextEditingController(text: 'Mrs');

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<UserModel>.multiSelection(
      searchFieldProps: TextFieldProps(
        controller: _userEditTextController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3.0),
            ),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              _userEditTextController.clear();
            },
          ),
        ),
      ),
      mode: Mode.BOTTOM_SHEET,
      maxHeight: 700,
      isFilteredOnline: true,
      showClearButton: true,
      showSelectedItems: true,
      compareFn: (item, selectedItem) => item?.id == selectedItem?.id,
      showSearchBox: true,
      dropdownSearchDecoration: const InputDecoration(
        labelText: 'User *',
        // filled: true,
        // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3.0),
          ),
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
      // autoValidateMode: AutovalidateMode.onUserInteraction,
      validator: (u) =>
          u == null || u.isEmpty ? "user field is required " : null,
      onFind: (String? filter) => getData(filter),
      onChanged: (data) {
        print(data);
      },
      dropdownBuilder: _customDropDownExampleMultiSelection,
      popupItemBuilder: _customPopupItemBuilderExample,
      popupSafeArea: const PopupSafeAreaProps(top: false, bottom: true),
      scrollbarProps: ScrollbarProps(
        isAlwaysShown: true,
        thickness: 7,
      ),
    );
  }

  Widget _customDropDownExampleMultiSelection(
      BuildContext context, List<UserModel?> selectedItems) {
    if (selectedItems.isEmpty) {
      return const ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: CircleAvatar(),
        title: Text("No item selected"),
      );
    }

    return Wrap(
      children: selectedItems.map((e) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const CircleAvatar(
                  // this does not work - throws 404 error
                  // backgroundImage: NetworkImage(item.avatar ?? ''),
                  ),
              title: Text(e?.name ?? ''),
              subtitle: Text(
                e?.createdAt.toString() ?? '',
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _customPopupItemBuilderExample(
      BuildContext context, UserModel? item, bool isSelected) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: !isSelected
          ? null
          : BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
      child: ListTile(
        selected: isSelected,
        title: Text(item?.name ?? ''),
        subtitle: Text(item?.createdAt?.toString() ?? ''),
        leading: const CircleAvatar(
            // this does not work - throws 404 error
            // backgroundImage: NetworkImage(item.avatar ?? ''),
            ),
      ),
    );
  }

  Future<List<UserModel>> getData(filter) async {
    var response = await Dio().get(
      "https://5d85ccfb1e61af001471bf60.mockapi.io/user",
      queryParameters: {"filter": filter},
    );

    final data = response.data;
    if (data != null) {
      return UserModel.fromJsonList(data);
    }

    return [];
  }
}

class UserModel {
  final String id;
  final DateTime? createdAt;
  final String name;
  final String? avatar;

  UserModel(
      {required this.id, this.createdAt, required this.name, this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      createdAt:
          json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      name: json["name"],
      avatar: json["avatar"],
    );
  }

  static List<UserModel> fromJsonList(List list) {
    return list.map((item) => UserModel.fromJson(item)).toList();
  }

  ///this method will prevent the override of toString
  String userAsString() {
    return '#${this.id} ${this.name}';
  }

  ///this method will prevent the override of toString
  bool? userFilterByCreationDate(String filter) {
    return this.createdAt?.toString().contains(filter);
  }

  ///custom comparing function to check if two users are equal
  bool isEqual(UserModel? model) {
    return this.id == model?.id;
  }

  @override
  String toString() => name;
}
