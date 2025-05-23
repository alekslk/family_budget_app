/// Represents a financial transaction.
///
/// Contains information about the transaction amount, category, date, and an optional note.
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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'categoryId': categoryId,
      'date': date.toIso8601String(),
      'note': note,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] as String,
      amount: map['amount'] is int
          ? (map['amount'] as int).toDouble()
          : map['amount'] as double,
      categoryId: map['categoryId'] as String,
      date: map['date'] is DateTime
          ? map['date'] as DateTime
          : DateTime.parse(map['date']),
      note: map['note'] as String?,
    );
  }
}
