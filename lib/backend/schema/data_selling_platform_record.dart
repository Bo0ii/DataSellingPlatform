import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSellingPlatformRecord extends FirestoreRecord {
  DataSellingPlatformRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "test" field.
  double? _test;
  double get test => _test ?? 0.0;
  bool hasTest() => _test != null;

  void _initializeFields() {
    _test = castToType<double>(snapshotData['test']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DataSellingPlatform');

  static Stream<DataSellingPlatformRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DataSellingPlatformRecord.fromSnapshot(s));

  static Future<DataSellingPlatformRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DataSellingPlatformRecord.fromSnapshot(s));

  static DataSellingPlatformRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DataSellingPlatformRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DataSellingPlatformRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DataSellingPlatformRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DataSellingPlatformRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DataSellingPlatformRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDataSellingPlatformRecordData({
  double? test,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'test': test,
    }.withoutNulls,
  );

  return firestoreData;
}

class DataSellingPlatformRecordDocumentEquality
    implements Equality<DataSellingPlatformRecord> {
  const DataSellingPlatformRecordDocumentEquality();

  @override
  bool equals(DataSellingPlatformRecord? e1, DataSellingPlatformRecord? e2) {
    return e1?.test == e2?.test;
  }

  @override
  int hash(DataSellingPlatformRecord? e) =>
      const ListEquality().hash([e?.test]);

  @override
  bool isValidKey(Object? o) => o is DataSellingPlatformRecord;
}
