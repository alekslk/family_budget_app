// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
  id: json['id'] as String,
  amount: (json['amount'] as num).toDouble(),
  categoryId: json['categoryId'] as String,
  date: DateTime.parse(json['date'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'categoryId': instance.categoryId,
      'date': instance.date.toIso8601String(),
      'note': instance.note,
    };
