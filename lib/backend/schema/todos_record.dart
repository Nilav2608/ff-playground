import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodosRecord extends FirestoreRecord {
  TodosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "task_des" field.
  String? _taskDes;
  String get taskDes => _taskDes ?? '';
  bool hasTaskDes() => _taskDes != null;

  void _initializeFields() {
    _taskName = snapshotData['task_name'] as String?;
    _taskDes = snapshotData['task_des'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todos');

  static Stream<TodosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodosRecord.fromSnapshot(s));

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodosRecord.fromSnapshot(s));

  static TodosRecord fromSnapshot(DocumentSnapshot snapshot) => TodosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodosRecordData({
  String? taskName,
  String? taskDes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_name': taskName,
      'task_des': taskDes,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodosRecordDocumentEquality implements Equality<TodosRecord> {
  const TodosRecordDocumentEquality();

  @override
  bool equals(TodosRecord? e1, TodosRecord? e2) {
    return e1?.taskName == e2?.taskName && e1?.taskDes == e2?.taskDes;
  }

  @override
  int hash(TodosRecord? e) =>
      const ListEquality().hash([e?.taskName, e?.taskDes]);

  @override
  bool isValidKey(Object? o) => o is TodosRecord;
}
