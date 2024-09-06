import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemperaturaRecord extends FirestoreRecord {
  TemperaturaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "temperatura" field.
  int? _temperatura;
  int get temperatura => _temperatura ?? 0;
  bool hasTemperatura() => _temperatura != null;

  void _initializeFields() {
    _temperatura = castToType<int>(snapshotData['temperatura']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('temperatura');

  static Stream<TemperaturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemperaturaRecord.fromSnapshot(s));

  static Future<TemperaturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemperaturaRecord.fromSnapshot(s));

  static TemperaturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemperaturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemperaturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemperaturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemperaturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemperaturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemperaturaRecordData({
  int? temperatura,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'temperatura': temperatura,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemperaturaRecordDocumentEquality implements Equality<TemperaturaRecord> {
  const TemperaturaRecordDocumentEquality();

  @override
  bool equals(TemperaturaRecord? e1, TemperaturaRecord? e2) {
    return e1?.temperatura == e2?.temperatura;
  }

  @override
  int hash(TemperaturaRecord? e) => const ListEquality().hash([e?.temperatura]);

  @override
  bool isValidKey(Object? o) => o is TemperaturaRecord;
}
