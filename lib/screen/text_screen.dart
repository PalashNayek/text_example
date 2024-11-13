import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_model/text_viewmodel.dart';

class TextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<TextViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Text with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<TextViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.displayText,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.updateText("Text Updated!");
                    },
                    child: Text("Update Text"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
