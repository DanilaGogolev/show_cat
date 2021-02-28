import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:show_random_cats/src/components/show_image/models/show_image_state.dart';

import 'show_image_cubit.dart';

class ShowImageView extends StatelessWidget {
  ShowImageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ShowImageCubit, ShowImageState>(
        builder: (context, state) {
          if (!state.isLoadingInitialData) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Image.network(
                  state.currentShowingImage.url,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  loadingBuilder: (
                    BuildContext context,
                    Widget child,
                    ImageChunkEvent loadingProgress,
                  ) =>
                      loadingProgress == null
                          ? child
                          : Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes
                                    : null,
                              ),
                            ),
                ),
                ElevatedButton(
                  child: Text('Show new cat'),
                  onPressed: () {
                    context.read<ShowImageCubit>().showNewCat();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );
}
