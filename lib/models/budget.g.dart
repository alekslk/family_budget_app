// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Budget _$BudgetFromJson(Map<String, dynamic> json) => Budget(
  id: json['id'] as String,
  userId: json['userId'] as String,
  year: (json['year'] as num).toInt(),
  month: (json['month'] as num).toInt(),
  amount: (json['amount'] as num).toDouble(),
  title: json['title'] as String?,
  parentBudgetId: json['parentBudgetId'] as String?,
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$BudgetToJson(Budget instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'year': instance.year,
  'month': instance.month,
  'amount': instance.amount,
  'title': instance.title,
  'parentBudgetId': instance.parentBudgetId,
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
