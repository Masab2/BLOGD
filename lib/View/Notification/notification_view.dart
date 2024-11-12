import 'package:blog_app/Bloc/NotificationBloc/notification_bloc.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/DateAndTimeUtil/date_and_time_utils.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:blog_app/Model/NotificationModel/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  void initState() {
    context.read<NotificationBloc>().add(NotificationLoadedEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notifications",
          style: GoogleFonts.lora(
            fontSize: context.mh * 0.027,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is NotificationCompletedState) {
            return ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: state.notifs.length,
              itemBuilder: (context, index) {
                final notification = state.notifs[index];
                return NotificationCard(notification: notification);
              },
            );
          } else if (state is NotificationErrorState) {
            return Center(child: Text(state.errorMsg));
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final NotificationList notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Notification icon with background
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.blackColor.withOpacity(0.83),
                shape: BoxShape.circle,
              ),
              child: Icon(
                IconlyBold.notification,
                color: AppColors.textColor,
                size: context.mh * 0.03,
              ),
            ),
            SizedBox(width: context.mw * 0.04),
            // Notification details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.notifsTitle,
                    style: GoogleFonts.montserrat(
                      fontSize: context.mh * 0.018,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: context.mh * 0.006),
                  Text(
                    DateAndTimeUtils.dateFormated(notification.date),
                    style: GoogleFonts.montserrat(
                      fontSize: context.mh * 0.016,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            // Read more or action button
            IconButton(
              onPressed: () {
                // Handle action here
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: context.mh * 0.022,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
