class ContentModel {
  final String imgUrl;
  final String date;
  final String title;

  ContentModel({
    required this.imgUrl,
    required this.date,
    required this.title,
  });

  // สร้างจาก Map (เช่นเวลามาจาก API)
  factory ContentModel.fromMap(Map<String, dynamic> map) {
    return ContentModel(
      imgUrl: map['img_url'] ?? '',
      date: map['date'] ?? '',
      title: map['title'] ?? '',
    );
  }

  // แปลงกลับเป็น Map (เผื่อใช้เก็บหรือส่งต่อ)
  Map<String, dynamic> toMap() {
    return {
      'img_url': imgUrl,
      'date': date,
      'title': title,
    };
  }
}
