import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  bool hasProduto() => _produto != null;

  // "comprado" field.
  bool? _comprado;
  bool get comprado => _comprado ?? false;
  bool hasComprado() => _comprado != null;

  // "Estufa" field.
  String? _estufa;
  String get estufa => _estufa ?? '';
  bool hasEstufa() => _estufa != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "luminosidade" field.
  String? _luminosidade;
  String get luminosidade => _luminosidade ?? '';
  bool hasLuminosidade() => _luminosidade != null;

  // "temperatura" field.
  int? _temperatura;
  int get temperatura => _temperatura ?? 0;
  bool hasTemperatura() => _temperatura != null;

  // "umidade" field.
  int? _umidade;
  int get umidade => _umidade ?? 0;
  bool hasUmidade() => _umidade != null;

  void _initializeFields() {
    _produto = snapshotData['produto'] as String?;
    _comprado = snapshotData['comprado'] as bool?;
    _estufa = snapshotData['Estufa'] as String?;
    _email = snapshotData['email'] as String?;
    _luminosidade = snapshotData['luminosidade'] as String?;
    _temperatura = castToType<int>(snapshotData['temperatura']);
    _umidade = castToType<int>(snapshotData['umidade']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? produto,
  bool? comprado,
  String? estufa,
  String? email,
  String? luminosidade,
  int? temperatura,
  int? umidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'produto': produto,
      'comprado': comprado,
      'Estufa': estufa,
      'email': email,
      'luminosidade': luminosidade,
      'temperatura': temperatura,
      'umidade': umidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.produto == e2?.produto &&
        e1?.comprado == e2?.comprado &&
        e1?.estufa == e2?.estufa &&
        e1?.email == e2?.email &&
        e1?.luminosidade == e2?.luminosidade &&
        e1?.temperatura == e2?.temperatura &&
        e1?.umidade == e2?.umidade;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.produto,
        e?.comprado,
        e?.estufa,
        e?.email,
        e?.luminosidade,
        e?.temperatura,
        e?.umidade
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
