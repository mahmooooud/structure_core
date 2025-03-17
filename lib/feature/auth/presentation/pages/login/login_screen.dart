part of 'login_imports.dart';

@RoutePage(name: LoginController.routeName)
class PdfSignatureScreen extends StatefulWidget {
  @override
  _PdfSignatureScreenState createState() => _PdfSignatureScreenState();
}

class _PdfSignatureScreenState extends State<PdfSignatureScreen> {
  final SignatureController _signatureController = SignatureController();
  pdfx.PdfController? _pdfController;
  Uint8List? _signatureImage;
  String? _pdfPath;
  double _signatureX = 0;
  double _signatureY = 0;
  bool _isSignatureVisible = false;

  Future<void> _pickPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _pdfPath = result.files.single.path;
        _pdfController = pdfx.PdfController(
          document: pdfx.PdfDocument.openFile(_pdfPath!),
        );
      });
    }
  }

  @override
  void dispose() {
    _signatureController.dispose();
    _pdfController?.dispose();
    super.dispose();
  }

  Future<void> _saveSignature() async {
    _signatureImage = await _signatureController.toPngBytes();

    if (_signatureImage != null) {
      await _addSignatureToPdf();
      await _openSavedPdf();
    }
    setState(() {
      _isSignatureVisible = false;
    });
  }

  Future<void> _openSavedPdf() async {
    Directory? downloadsDirectory;
    if (Platform.isAndroid) {
      downloadsDirectory = Directory('/storage/emulated/0/Download');
    } else if (Platform.isIOS) {
      downloadsDirectory = await getApplicationDocumentsDirectory();
    }

    if (downloadsDirectory != null) {
      final filePath =
          path.join(downloadsDirectory.path, 'signed_document.pdf');
      final file = File(filePath);

      if (await file.exists()) {
        await launchUrl(Uri.file(file.path));
      }
    }
  }

  Future<void> _addSignatureToPdf() async {
    if (_pdfPath == null) return;

    final pdf = pw.Document();
    final file = File(_pdfPath!);
    final bytes = await file.readAsBytes();
    final pdfDocument = await pdfx.PdfDocument.openData(bytes);
    final image = pw.MemoryImage(_signatureImage!);
    final pageCount = await pdfDocument.pagesCount;

    for (int i = 1; i <= pageCount; i++) {
      try {
        final page = await pdfDocument.getPage(i);
        final pageImage =
            await page.render(width: page.width, height: page.height);
        final rawImage = pageImage?.bytes;

        pdf.addPage(pw.Page(build: (pw.Context context) {
          return pw.Stack(children: [
            pw.Image(pw.MemoryImage(rawImage!)),
            if (i == 1 && _isSignatureVisible)
              pw.Positioned(
                left: _signatureX,
                top: _signatureY,
                child: pw.Image(image, width: 200, height: 100),
              )
          ]);
        }));
      } catch (e) {
        print('Error rendering page $i: $e');
      }
    }

    Directory? downloadsDirectory;
    if (Platform.isAndroid) {
      downloadsDirectory = Directory('/storage/emulated/0/Download');
    } else if (Platform.isIOS) {
      downloadsDirectory = await getApplicationDocumentsDirectory();
    }

    if (downloadsDirectory != null) {
      final filePath =
          path.join(downloadsDirectory.path, 'signed_document.pdf');
      final outputFile = File(filePath);
      await outputFile.writeAsBytes(await pdf.save());

      print('PDF saved to: $filePath');
    } else {
      print("Could not get Download directory.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign PDF')),
      body: _pdfPath == null
          ? Center(
              child: ElevatedButton(
                onPressed: _pickPdf,
                child: Text('Select PDF'),
              ),
            )
          : Stack(
              children: [
                GestureDetector(
                  onTapDown: (TapDownDetails details) {
                    if (_isSignatureVisible) {
                      setState(() {
                        _signatureX = details.localPosition.dx;
                        _signatureY = details.localPosition.dy;
                      });
                    }
                  },
                  child: pdfx.PdfView(controller: _pdfController!),
                ),
                if (_isSignatureVisible)
                  Positioned(
                    left: _signatureX,
                    top: _signatureY,
                    child: Signature(
                      controller: _signatureController,
                      height: 50,
                      width: 200,
                      backgroundColor: Colors.grey[200]!,
                    ),
                  ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isSignatureVisible = true;
                            _signatureController.clear();
                          });
                        },
                        child: Text('Add Signature'),
                      ),
                      ElevatedButton(
                        onPressed: _saveSignature,
                        child: Text('Save Signature'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
