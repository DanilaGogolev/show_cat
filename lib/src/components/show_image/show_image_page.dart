import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'show_image_cubit.dart';
import 'show_image_view.dart';

class ShowImagePage extends StatelessWidget {
  const ShowImagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ShowImageCubit(),
      child: ShowImageView(),
    );
  }
}
