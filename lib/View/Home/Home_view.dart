import 'dart:developer';
import 'package:blog_app/Bloc/BlogsBloc/blogs_bloc.dart';
import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_bloc.dart';
import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_event.dart';
import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_state.dart';
import 'package:blog_app/Config/Assets/image_asset.dart';
import 'package:blog_app/Config/Components/BlogPostCard/blog_post_card_widget.dart';
import 'package:blog_app/Config/Components/BlogPostCard/shimmer_blog_post_card.dart';
import 'package:blog_app/Config/Components/TextFromFeilds/customized_feilds.dart';
import 'package:blog_app/Config/DateAndTimeUtil/date_and_time_utils.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:blog_app/Config/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:badges/badges.dart' as badges;
import '../../Config/Widget/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    context.read<BlogsBloc>().add(BlogLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BLOGD",
            style: GoogleFonts.lora(
              fontSize: context.mh * 0.027,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Builder(
            builder: (context) => InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Image(
                image: AssetImage(ImageAsset.sideMenu),
                height: 20,
                width: 20,
              ),
            ),
          ),
          actions: [
            BlocListener<CreateBlogBloc, CreateBlogState>(
              listener: (context, state) {
                if (state is CreateBlogCompletedState) {
                  log("Notification state change detected.");
                }
              },
              child: BlocBuilder<CreateBlogBloc, CreateBlogState>(
                builder: (context, state) {
                  log("Called BlocBuilder");
                  bool showBadge = false;

                  if (state is CreateBlogCompletedState) {
                    log("New notification: ${state.hasNewNotification}");
                    showBadge = state.hasNewNotification;
                  }

                  return badges.Badge(
                    showBadge: showBadge,
                    badgeContent: const Text(''),
                    position: badges.BadgePosition.topEnd(
                      top: -12,
                      end: 0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        log("Notification tapped, clearing notification.");
                        context
                            .read<CreateBlogBloc>()
                            .add(NotificationClearedEvent());
                        Navigator.pushNamed(
                            context, RoutesNames.notificationScreen,);
                      },
                      child: const Icon(IconlyBold.notification),
                    ),
                  );
                },
              ),
            ),
            0.02.pw(context),
          ],
        ),
        drawer: const SideBarMenuWidget(),
        body: RefreshIndicator(
          onRefresh: () async {
            context.read<BlogsBloc>().add(BlogLoadedEvent());
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomizedFeilds(
                      hintText: "",
                      prefixIcon: IconlyLight.search,
                      onChanged: (value) {
                        context
                            .read<BlogsBloc>()
                            .add(BlogFilterEvent(qurey: value));
                        return null;
                      },
                    ),
                  ),
                  0.02.pw(context),
                  const Icon(
                    IconlyBold.filter,
                  ),
                  0.02.pw(context),
                ],
              ),
              0.02.ph(context),
              BlocBuilder<BlogsBloc, BlogsState>(
                builder: (context, state) {
                  if (state is BlogLoadingState) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const ShimmerBlogPostCard();
                        },
                      ),
                    );
                  } else if (state is BlogSuccessState) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          var data = state.data[index];
                          return BlogPostCard(
                            title: data.title ?? "",
                            author: data.author ?? "",
                            date:
                                DateAndTimeUtils.dateFormated(data.date ?? ""),
                            timeToRead: "${data.estimatedTime} min read",
                            onReadMore: () {
                              Navigator.pushNamed(
                                  context, RoutesNames.blogdetailsScreen,
                                  arguments: data.blogsId);
                            },
                            description: data.description ?? "",
                          );
                        },
                      ),
                    );
                  } else if (state is BlogErrorState) {
                    return Center(
                      child: Text(state.errorMsg),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
