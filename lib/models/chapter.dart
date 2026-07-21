class Chapter {
  final int number;
  final String title;
  final String filename;
  final String content;

  Chapter({
    required this.number,
    required this.title,
    required this.filename,
    required this.content,
  });

  String get subtitle {
    // Extract first 50 chars of content as subtitle
    final clean = content.replaceAll(RegExp(r'[#*>\-\[\]!]'), '').trim();
    if (clean.length <= 60) return clean;
    return '${clean.substring(0, 60)}...';
  }
}

// Anaesthesia book chapters - embedded content
// In production, load from assets folder
List<Chapter> getAnaesthesiaChapters() {
  return [
    Chapter(
      number: 1,
      title: '良好實踐與安全',
      filename: 'CH01_良好實踐與安全.md',
      content: _ch01,
    ),
    Chapter(
      number: 2,
      title: '術前評估',
      filename: 'CH02_術前評估.md',
      content: _ch02,
    ),
    Chapter(
      number: 3,
      title: '術前優化',
      filename: 'CH03_術前優化.md',
      content: _ch03,
    ),
    Chapter(
      number: 4,
      title: '高風險族群',
      filename: 'CH04_高風險族群.md',
      content: _ch04,
    ),
    Chapter(
      number: 5,
      title: '心血管疾病',
      filename: 'CH05_心血管疾病.md',
      content: _ch05,
    ),
    Chapter(
      number: 6,
      title: '呼吸系統疾病',
      filename: 'CH06_呼吸系統疾病.md',
      content: _ch06,
    ),
    Chapter(
      number: 7,
      title: '腎臟疾病',
      filename: 'CH07_腎臟疾病.md',
      content: _ch07,
    ),
    Chapter(
      number: 8,
      title: '肝臟疾病',
      filename: 'CH08_肝臟疾病.md',
      content: _ch08,
    ),
    Chapter(
      number: 9,
      title: '內分泌與代謝疾病',
      filename: 'CH09_內分泌與代謝疾病.md',
      content: _ch09,
    ),
    Chapter(
      number: 10,
      title: '骨骼關節與結締組織疾病',
      filename: 'CH10_骨骼關節與結締組織疾病.md',
      content: _ch10,
    ),
    Chapter(
      number: 11,
      title: '血液學',
      filename: 'CH11_血液學.md',
      content: _ch11,
    ),
    Chapter(
      number: 12,
      title: '神經與肌肉疾病',
      filename: 'CH12_神經與肌肉疾病.md',
      content: _ch12,
    ),
    Chapter(
      number: 13,
      title: '精神疾病',
      filename: 'CH13_精神疾病.md',
      content: _ch13,
    ),
    Chapter(
      number: 14,
      title: '入門',
      filename: 'CH14_入門.md',
      content: _ch14,
    ),
    Chapter(
      number: 15,
      title: '氣道評估與管理',
      filename: 'CH15_氣道評估與管理.md',
      content: _ch15,
    ),
    Chapter(
      number: 16,
      title: '麻醉執行',
      filename: 'CH16_麻醉執行.md',
      content: _ch16,
    ),
    Chapter(
      number: 17,
      title: '血液製品與輸液',
      filename: 'CH17_血液製品與輸液.md',
      content: _ch17,
    ),
    Chapter(
      number: 18,
      title: '特殊情況',
      filename: 'CH18_特殊情況.md',
      content: _ch18,
    ),
    Chapter(
      number: 19,
      title: '心臟麻醉',
      filename: 'CH19_心臟麻醉.md',
      content: _ch19,
    ),
    Chapter(
      number: 20,
      title: '胸腔外科麻醉',
      filename: 'CH20_胸腔外科麻醉.md',
      content: _ch20,
    ),
    Chapter(
      number: 21,
      title: '神經外科麻醉',
      filename: 'CH21_神經外科麻醉.md',
      content: _ch21,
    ),
    Chapter(
      number: 22,
      title: '血管外科麻醉',
      filename: 'CH22_血管外科麻醉.md',
      content: _ch22,
    ),
    Chapter(
      number: 23,
      title: '骨科麻醉',
      filename: 'CH23_骨科麻醉.md',
      content: _ch23,
    ),
    Chapter(
      number: 24,
      title: '整形與燒傷麻醉',
      filename: 'CH24_整形與燒傷麻醉.md',
      content: _ch24,
    ),
    Chapter(
      number: 25,
      title: '胃腸外科麻醉',
      filename: 'CH25_胃腸外科麻醉.md',
      content: _ch25,
    ),
    Chapter(
      number: 26,
      title: '減肥手術麻醉',
      filename: 'CH26_減肥手術麻醉.md',
      content: _ch26,
    ),
    Chapter(
      number: 27,
      title: '肝臟手術麻醉',
      filename: 'CH27_肝臟手術麻醉.md',
      content: _ch27,
    ),
    Chapter(
      number: 28,
      title: '內分泌手術麻醉',
      filename: 'CH28_內分泌手術麻醉.md',
      content: _ch28,
    ),
    Chapter(
      number: 29,
      title: '泌尿外科麻醉',
      filename: 'CH29_泌尿外科麻醉.md',
      content: _ch29,
    ),
    Chapter(
      number: 30,
      title: '婦科麻醉',
      filename: 'CH30_婦科麻醉.md',
      content: _ch30,
    ),
    Chapter(
      number: 31,
      title: 'ENT麻醉',
      filename: 'CH31_ENT麻醉.md',
      content: _ch31,
    ),
    Chapter(
      number: 32,
      title: '口腔頜面麻醉',
      filename: 'CH32_口腔頜面麻醉.md',
      content: _ch32,
    ),
    Chapter(
      number: 33,
      title: '眼科麻醉',
      filename: 'CH33_眼科麻醉.md',
      content: _ch33,
    ),
    Chapter(
      number: 34,
      title: '放射與心臟麻醉',
      filename: 'CH34_放射與心臟麻醉.md',
      content: _ch34,
    ),
    Chapter(
      number: 35,
      title: '產科麻醉',
      filename: 'CH35_產科麻醉.md',
      content: _ch35,
    ),
    Chapter(
      number: 36,
      title: '小兒新生兒麻醉',
      filename: 'CH36_小兒新生兒麻醉.md',
      content: _ch36,
    ),
    Chapter(
      number: 37,
      title: '創傷麻醉',
      filename: 'CH37_創傷麻醉.md',
      content: _ch37,
    ),
    Chapter(
      number: 38,
      title: '急診麻醉',
      filename: 'CH38_急診麻醉.md',
      content: _ch38,
    ),
    Chapter(
      number: 39,
      title: '麻醉急症',
      filename: 'CH39_麻醉急症.md',
      content: _ch39,
    ),
    Chapter(
      number: 40,
      title: '區域麻醉',
      filename: 'CH40_區域麻醉.md',
      content: _ch40,
    ),
    Chapter(
      number: 41,
      title: '急性疼痛',
      filename: 'CH41_急性疼痛.md',
      content: _ch41,
    ),
    Chapter(
      number: 42,
      title: '藥物手冊',
      filename: 'CH42_藥物手冊.md',
      content: _ch42,
    ),
  ];
}

// Placeholder content - actual content would be loaded from files
const String _ch01 = 'Chapter 1: Good Practice and Safety\n\nLoading...';
const String _ch02 = 'Chapter 2: Preoperative Considerations\n\nLoading...';
const String _ch03 = 'Chapter 3: Preoptimisation\n\nLoading...';
const String _ch04 = 'Chapter 4: At-risk Populations\n\nLoading...';
const String _ch05 = 'Chapter 5: Cardiovascular Disease\n\nLoading...';
const String _ch06 = 'Chapter 6: Respiratory Disease\n\nLoading...';
const String _ch07 = 'Chapter 7: Renal Disease\n\nLoading...';
const String _ch08 = 'Chapter 8: Hepatic Disease\n\nLoading...';
const String _ch09 = 'Chapter 9: Endocrine and Metabolic Disease\n\nLoading...';
const String _ch10 = 'Chapter 10: Bone, Joint and Connective Tissue Disorders\n\nLoading...';
const String _ch11 = 'Chapter 11: Haematology\n\nLoading...';
const String _ch12 = 'Chapter 12: Neurological and muscular disorders\n\nLoading...';
const String _ch13 = 'Chapter 13: Psychiatric disorders\n\nLoading...';
const String _ch14 = 'Chapter 14: Getting started\n\nLoading...';
const String _ch15 = 'Chapter 15: Airway assessment and management\n\nLoading...';
const String _ch16 = 'Chapter 16: Conduct of anaesthesia\n\nLoading...';
const String _ch17 = 'Chapter 17: Blood products and fluid therapy\n\nLoading...';
const String _ch18 = 'Chapter 18: Specific circumstances\n\nLoading...';
const String _ch19 = 'Chapter 19: Cardiac anaesthesia\n\nLoading...';
const String _ch20 = 'Chapter 20: Thoracic Surgery\n\nLoading...';
const String _ch21 = 'Chapter 21: Neurosurgery\n\nLoading...';
const String _ch22 = 'Chapter 22: Vascular Surgery\n\nLoading...';
const String _ch23 = 'Chapter 23: Orthopaedic Surgery\n\nLoading...';
const String _ch24 = 'Chapter 24: Plastic and Burns Surgery\n\nLoading...';
const String _ch25 = 'Chapter 25: Gastrointestinal Surgery\n\nLoading...';
const String _ch26 = 'Chapter 26: Bariatric Surgery\n\nLoading...';
const String _ch27 = 'Chapter 27: Liver Procedures\n\nLoading...';
const String _ch28 = 'Chapter 28: Endocrine Surgery\n\nLoading...';
const String _ch29 = 'Chapter 29: Urological Surgery\n\nLoading...';
const String _ch30 = 'Chapter 30: Gynaecological Surgery\n\nLoading...';
const String _ch31 = 'Chapter 31: ENT Surgery\n\nLoading...';
const String _ch32 = 'Chapter 32: Maxillofacial and Dental Surgery\n\nLoading...';
const String _ch33 = 'Chapter 33: Ophthalmic Surgery\n\nLoading...';
const String _ch34 = 'Chapter 34: Anaesthesia for Radiology and Cardiology\n\nLoading...';
const String _ch35 = 'Chapter 35: Obstetric Anaesthesia and Analgesia\n\nLoading...';
const String _ch36 = 'Chapter 36: Paediatric and Neonatal Anaesthesia\n\nLoading...';
const String _ch37 = 'Chapter 37: The Major Trauma Patient\n\nLoading...';
const String _ch38 = 'Chapter 38: The Emergency Patient\n\nLoading...';
const String _ch39 = 'Chapter 39: Anaesthetic Emergencies\n\nLoading...';
const String _ch40 = 'Chapter 40: Regional Anaesthesia\n\nLoading...';
const String _ch41 = 'Chapter 41: Acute Pain\n\nLoading...';
const String _ch42 = 'Chapter 42: Drug Formulary\n\nLoading...';
