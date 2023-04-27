class Document {
  Document({
    required this.doc_title,
    // ignore: non_constant_identifier_names
    required this.doc_url,
    required this.doc_date,
    required this.page_num,
   
  });

  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;
  

  static List<Document> doc_list = [
    Document(
      doc_title: "Artificial Intelligence and its Role in Near Future",
      doc_url: "https://arxiv.org/pdf/1804.01396.pdf",
      doc_date: "8-08-2015",
      page_num: 11, 
    ),
    Document(
      doc_title: "The IMPACT OF ARTIFICIAL INTELLIGENCE ON INNOVATION",
      doc_url:
          "https://www.nber.org/system/files/working_papers/w24449/w24449.pdf",
      doc_date: "28-03-2018",
      page_num: 40, 
    ),
    Document(
      doc_title: "全國知名台南新化老街竟因「科技執法」整條街冷清清",
      doc_url:
          "https://drive.google.com/file/d/1xLhzmgmFyrZbUqXlQt993HkoLK64MPzA/view?usp=share_link",
      doc_date: "26-04-2023",
      page_num: 4, 
    ),
    
  ];
}
