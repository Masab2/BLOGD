import 'package:blog_app/Bloc/CategoryBloc/category_bloc.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/TextFromFeilds/customized_feilds.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../Config/Widget/widgets.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    context.read<CategoryBloc>().add(CategoryLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Categories",
          style: GoogleFonts.lora(
            fontSize: context.mh * 0.027,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<CategoryBloc>().add(CategoryLoadedEvent());
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomizedFeilds(
                    hintText: "search category",
                    prefixIcon: IconlyLight.search,
                    onChanged: (value) {
                      context
                          .read<CategoryBloc>()
                          .add(CategoryFilterEvent(qurey: value));
                      return null;
                    },
                  ),
                ),
                0.02.pw(context),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(context.mw * 0.04),
              child: BlocBuilder<CategoryBloc, CategoryBlocState>(
                builder: (context, state) {
                  if (state is CategoryLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is CategoryCompletedState) {
                    return CategoryDisplayMainWidget(state: state);
                  } else if (state is CategoryErrorState) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.mw * 0.02,
                          vertical: context.mh * 0.02),
                      margin:
                          EdgeInsets.symmetric(horizontal: context.mw * 0.03),
                      decoration: BoxDecoration(
                        color: AppColors.textColor.withOpacity(0.33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          state.errorMsg,
                          style: GoogleFonts.lora(
                            fontSize: context.mh * 0.022,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
