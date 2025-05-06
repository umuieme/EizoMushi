// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class FavoriteAnimeAdapter extends TypeAdapter<FavoriteAnime> {
  @override
  final typeId = 2;

  @override
  FavoriteAnime read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteAnime(
      id: fields[0] as String,
      dataId: fields[1] as String,
      title: fields[2] as String,
      japaneseTitle: fields[3] as String,
      poster: fields[4] as String,
      description: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteAnime obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.dataId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.japaneseTitle)
      ..writeByte(4)
      ..write(obj.poster)
      ..writeByte(5)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteAnimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
