import 'package:json_annotation/json_annotation.dart';

part 'transactions.g.dart';

/// Represents a financial transaction.
///
/// Contains information about the transaction amount, category, date, and an optional note.
@JsonSerializable()
class Transaction {
  final String id;
  final double amount;
  final String categoryId;
  final DateTime date;
  final String? note;

  Transaction({
    required this.id,
    required this.amount,
    required this.categoryId,
    required this.date,
    this.note
});

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
