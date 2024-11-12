import 'package:blog_app/Bloc/CategoryBloc/category_bloc.dart';
import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_bloc.dart';
import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_event.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/RoundButton/round_btn.dart';
import 'package:blog_app/Config/Components/TextFromFeilds/blogs_textform_feild.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchfield/searchfield.dart';

class CreateBlogView extends StatefulWidget {
  const CreateBlogView({super.key});

  @override
  State<CreateBlogView> createState() => _CreateBlogViewState();
}

class _CreateBlogViewState extends State<CreateBlogView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController aurthorController = TextEditingController();
  final TextEditingController estimatedTimeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final _formfield = GlobalKey<FormState>();
  @override
  void initState() {
    context.read<CategoryBloc>().add(CategoryLoadedEvent());
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    categoryController.dispose();
    aurthorController.dispose();
    estimatedTimeController.dispose();
    descriptionController.dispose();
    _formfield.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "New Blog",
          style: GoogleFonts.lora(
            fontSize: context.mh * 0.027,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formfield,
          child: Column(
            children: [
              BlogsTextFormFeild(
                controller: titleController,
                hintText: "Blog Title",
                label: 'Title',
              ),
              0.03.ph(context),
              BlocBuilder<CategoryBloc, CategoryBlocState>(
                builder: (context, state) {
                  if (state is CategoryLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is CategoryCompletedState) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: context.mw * 0.03),
                      padding:
                          EdgeInsets.symmetric(horizontal: context.mw * 0.02),
                      decoration: BoxDecoration(
                        color: AppColors.textColor.withOpacity(0.33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SearchField<dynamic>(
                        controller: categoryController,
                        hint: "Select Category",
                        dynamicHeight: true,
                        onSuggestionTap: (value) {},
                        searchInputDecoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: context.mh * 0.016),
                          contentPadding:
                              const EdgeInsets.only(bottom: 10, left: 16),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        suggestions: [
                          ...List.generate(
                            state.categoryList.length,
                            (index) => SearchFieldListItem<dynamic>(
                              state.categoryList[index].name ?? "",
                              item: state.categoryList[index].name,
                              key: UniqueKey(),
                              child: Text(
                                state.categoryList[index].name ?? "",
                                style: TextStyle(fontSize: context.mh * 0.015),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (state is CategoryErrorState) {
                    return Container(
                        height: 40,
                        margin:
                            EdgeInsets.symmetric(horizontal: context.mw * 0.03),
                        padding:
                            EdgeInsets.symmetric(horizontal: context.mw * 0.02),
                        decoration: BoxDecoration(
                          color: AppColors.textColor.withOpacity(0.33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text(state.errorMsg)));
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              0.03.ph(context),
              Row(
                children: [
                  Expanded(
                    child: BlogsTextFormFeild(
                      controller: aurthorController,
                      hintText: "Johon Deo",
                      label: 'Author',
                    ),
                  ),
                  Expanded(
                    child: BlogsTextFormFeild(
                      controller: estimatedTimeController,
                      hintText: "5 min etc",
                      label: 'Estimated Time',
                    ),
                  ),
                ],
              ),
              0.03.ph(context),
              BlogsTextFormFeild(
                controller: descriptionController,
                hintText: "Blog Description",
                label: 'Description',
                maxLines: 5,
              ),
              0.03.ph(context),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.mw * 0.03,
                  vertical: context.mh * 0.02,
                ),
                child: RoundBtn(
                  color: AppColors.blackColor,
                  title: "Publish Blog",
                  textcolor: AppColors.whiteColor,
                  onPress: () {
                    if (_formfield.currentState!.validate()) {
                      context.read<CreateBlogBloc>().add(
                            CreateBlogButtonPressed(
                              title: titleController.text,
                              description: descriptionController.text,
                              author: aurthorController.text,
                              category: categoryController.text,
                              estimatedTime: estimatedTimeController.text,
                              date: DateTime.now().toString(),
                            ),
                          );

                       titleController.clear();
                       descriptionController.clear();
                       aurthorController.clear();
                       categoryController.clear();
                       estimatedTimeController.clear();  
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
