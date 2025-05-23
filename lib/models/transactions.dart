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
      'date': date,
      'note': note,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'],
      amount: map['amount'],
      categoryId: map['categoryId'],
      date: map['date'],
      note: map['note'],
    );
  }
}