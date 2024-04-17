import 'package:gestions_des_depense_des_enfants/models/parent.model.dart';

class EnfantModel {
  String? id;
  String? fullname;
  String? cne;
  String? image;
  String? ecole;
  String? niveau;
  ParentModel? parent;

  EnfantModel({
    this.id,
    this.fullname,
    this.cne,
    this.image,
    this.ecole,
    this.niveau,
    this.parent,
  });

  factory EnfantModel.fromJson(Map<String, dynamic> json) {
    return EnfantModel(
      id: json['_id'],
      fullname: json['fullname'],
      cne: json['cne'],
      image: json['image'],
      ecole: json['ecole'],
      niveau: json['niveau'],
      parent: ParentModel.fromJson(json['parent']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'fullname': fullname,
      'cne': cne,
      'image': image,
      'ecole': ecole,
      'niveau': niveau,
      'parent': parent?.toJson(),
    };
  }
}
