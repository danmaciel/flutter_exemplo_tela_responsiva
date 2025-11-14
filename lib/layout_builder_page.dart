
import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Usando o Layout Builder"),
      ),
      body: Center(
        child: LayoutBuilder(
            builder: (context, constraints) {
              // constraints herda do pai(Center)
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.orange,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .5,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.green,
                          width: constraints.maxWidth * .25,
                          height: constraints.maxHeight,
                        ),
                        Container(
                          color: Colors.amberAccent,
                          width: constraints.maxWidth * .25,
                          height: constraints.maxHeight,
                        ),
                        Container(
                          color: Colors.black12,
                          width: constraints.maxWidth * .25,
                          height: constraints.maxHeight,
                        ),
                        Container(
                          color: Colors.deepOrangeAccent,
                          width: constraints.maxWidth * .25,
                          height: constraints.maxHeight,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blueAccent,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * .5,
                  )
                ],
              );
            },
        )
      ),
    );
  }
}
