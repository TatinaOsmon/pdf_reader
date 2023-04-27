import 'package:flutter/material.dart';
import 'package:pdf_reader/models/document_models.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
  final Document doc;
  final String password;

  const ReaderScreen(this.doc, {required this.password, Key? key})
      : super(key: key);

  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  void initState() {
    super.initState();
    String password =
        widget.password.isNotEmpty ? widget.password : "Sayhong123";
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.doc.doc_title ?? 'No title'),
      ),
      body: Container(
        child: SfPdfViewer.network(
          widget.doc.doc_url!,
          controller: _pdfViewerController,
        ),
      ),
    );
  }
}
