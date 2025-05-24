import 'package:json_annotation/json_annotation.dart';

part 'budget.g.dart';

/// Represents a user's monthly budget (main or sub-budget).
@JsonSerializable()
class Budget {
  final String id;
  final String userId;
  final int year;
  final int month;
  final double amount;
  final String? title;
  final String? parentBudgetId;
  final DateTime? updatedAt;

  Budget({
    required this.id,
    required this.userId,
    required this.year,
    required this.month,
    required this.amount,
    this.title,
    this.parentBudgetId,
    this.updatedAt,
});

  Map<String, dynamic> toJson() => _$BudgetToJson(this);
  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);
}
