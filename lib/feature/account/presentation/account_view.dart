import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nodelabs_case/app/design_system/widget/error.dart';
import 'package:nodelabs_case/app/design_system/widget/loading.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/extension/context_extension.dart';
import 'package:nodelabs_case/app/navigation/routes.dart';
import 'package:nodelabs_case/feature/account/data/model/account.dart';
import 'package:nodelabs_case/feature/account/presentation/bloc/account_bloc.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';
import 'package:nodelabs_case/generated/locale_keys.g.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AccountBloc>()..add(AccountEvent.started()),
      child: _AccountContent(),
    );
  }
}

class _AccountContent extends StatefulWidget {
  const _AccountContent();

  @override
  State<_AccountContent> createState() => __AccountContent();
}

class __AccountContent extends State<_AccountContent> {
  late final ShadPopoverController _morePopoverController;

  @override
  void initState() {
    super.initState();
    _morePopoverController = ShadPopoverController();
  }

  @override
  void dispose() {
    super.dispose();
    _morePopoverController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('account_view'),
      onVisibilityChanged: (visibilityInfo) {
        double visiblePercentage = visibilityInfo.visibleFraction;
        if (visiblePercentage == 1.0) {
          context.read<AccountBloc>().add(AccountEvent.started());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr(LocaleKeys.account_title),
            style: context.textTheme.large,
          ),
          actionsPadding: EdgeInsets.only(right: 20.w),
          actions: [
            ShadIconButton.ghost(
              icon: Icon(Icons.logout),
              onPressed: () {
                context.read<AccountBloc>().add(AccountEvent.logoutPressed());
                context.router.popUntilRoot();
                context.router.replacePath(Routes.login.path);
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: BlocBuilder<AccountBloc, AccountState>(
              builder: (context, state) => switch (state) {
                AccountLoading() => DSLoading(),
                AccountLoaded() => _Content(
                  account: state.account,
                  favorites: state.favorites,
                  morePopoverController: _morePopoverController,
                ),
                AccountError() => DSError(),
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required ShadPopoverController morePopoverController,
    required this.account,
    required this.favorites,
  }) : _morePopoverController = morePopoverController;

  final ShadPopoverController _morePopoverController;
  final Account? account;
  final List<Movie>? favorites;

  Future<XFile?> _imagePicker() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      // imageQuality: 10,
      maxWidth: 1024,
      maxHeight: 1024,
    );
    return pickedFile;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ShadAvatar(account?.photoUrl ?? '', size: Size(64.w, 64.w)),
            SizedBox(width: 8.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account?.name ?? '',
                  style: context.textTheme.p.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ID: ${account?.id ?? ''}',
                  style: context.textTheme.muted,
                ),
              ],
            ),
            Spacer(),
            ShadPopover(
              controller: _morePopoverController,
              popover: (context) => Container(
                width: 160.w,
                child: ShadButton.ghost(
                  child: Text(context.tr(LocaleKeys.account_addPhoto)),
                  leading: Icon(Icons.add_photo_alternate_rounded),
                  onPressed: () async {
                    final XFile? pickedImage = await _imagePicker();

                    if (pickedImage != null) {
                      context.read<AccountBloc>().add(
                        AccountEvent.addPhotoRequested(image: pickedImage),
                      );
                    }
                    _morePopoverController.hide();
                  },
                ),
              ),
              child: ShadIconButton.ghost(
                onPressed: _morePopoverController.toggle,
                icon: Icon(Icons.more_vert_rounded),
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h),
        Text(
          context.tr(LocaleKeys.account_myLikedMovies),
          style: context.textTheme.p.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 24.h),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 300.h,
            // childAspectRatio: 0.8,
            mainAxisSpacing: 16.w,
            crossAxisSpacing: 16.w,
          ),
          itemCount: favorites?.length,
          itemBuilder: (context, index) {
            final movie = favorites?[index];
            return Container(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.w),

                      child: Image.network(
                        movie?.poster ?? '',
                        width: double.infinity,
                        height: 200.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      movie?.title ?? '',
                      style: context.textTheme.small.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2.h),

                    Text(movie?.director ?? '', style: context.textTheme.muted),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
