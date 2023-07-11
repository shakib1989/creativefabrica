part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class WatchListModel {
  String id;
  String name;
  List<String> items;

  WatchListModel({
    required this.id,
    required this.name,
    required this.items,
  });

  factory WatchListModel.empty() => WatchListModel(
        id: '',
        name: '',
        items: [],
      );

  factory WatchListModel.fromJson(Map<String, dynamic> json) =>
      _$WatchListModelFromJson(json);

  Map<String, dynamic> toJson() => _$WatchListModelToJson(this);
}
