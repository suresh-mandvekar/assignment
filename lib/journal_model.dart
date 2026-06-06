class JournalModel {

  JournalModel(
      this.id,
      this.title,
      this.desc,
      this.created_at,
      );

  final int id;
  final String title, desc,created_at;

  // ૨. JSON માંથી ઓબ્જેક્ટ બનાવવા માટે
  factory JournalModel.fromJson(Map<String, dynamic> json) {
    return JournalModel(
      json['id'] ?? 0,
      json['title'] ?? '',
      json['description'] ?? '',
      json['created_at'] ??''
     ,
    );
  }

  // ૩. ઓબ્જેક્ટમાંથી JSON બનાવવા માટે
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': desc,
      'createdAt': created_at,
    };
  }
}
