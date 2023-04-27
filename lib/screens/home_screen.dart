import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_reader/models/document_models.dart';
import 'package:pdf_reader/screens/reader_sreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: const Text(" PDF Reader"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent Documents",
                  style: GoogleFonts.roboto(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ...Document.doc_list.map(
                  (doc) => Column(
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.picture_as_pdf,
                          color: Colors.red,
                          size: 32.0,
                        ),
                        title: Text(
                          doc.doc_title!,
                          style: GoogleFonts.nunito(),
                        ),
                        subtitle: Text(
                          "Page ${doc.page_num} - ${doc.doc_date}",
                          style: GoogleFonts.nunito(color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          // here I did function to navigate to the reader page and
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReaderScreen(doc,password: 'Sayhong123',)));
                        },
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
