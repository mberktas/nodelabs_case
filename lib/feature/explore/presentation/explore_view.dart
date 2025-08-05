import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nodelabs_case/app/design_system/theme/app_colors.dart';
import 'package:nodelabs_case/app/design_system/widget/error.dart';
import 'package:nodelabs_case/app/design_system/widget/loading.dart';
import 'package:nodelabs_case/app/di/injectable.dart';
import 'package:nodelabs_case/app/extension/context_extension.dart';
import 'package:nodelabs_case/feature/explore/presentation/bloc/explore_bloc.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<ExploreBloc>()..add(ExploreEvent.fetchMoviesRequested(page: 1)),
      child: const _ExploreContent(),
    );
  }
}

class _ExploreContent extends StatefulWidget {
  const _ExploreContent();

  @override
  State<_ExploreContent> createState() => _ExploreContentState();
}

class _ExploreContentState extends State<_ExploreContent> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_handlePageChange);
  }

  void _handlePageChange() {
    final page = _pageController.page?.round() ?? 0;
    if (page != _currentIndex) {
      _currentIndex = page;

      if (_currentIndex % 4 == 0) {
        context.read<ExploreBloc>().add(
          ExploreEvent.fetchMoreMoviesRequested(page: _currentIndex + 1),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          return;
        },
        child: BlocBuilder<ExploreBloc, ExploreState>(
          builder: (context, state) => switch (state) {
            ExploreLoading() => const DSLoading(),
            ExploreError() => const DSError(),
            ExploreLoaded(movies: final movies) => PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        child: Image.network(
                          movies[index].poster ?? '',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),

                        // foregroundDecoration: BoxDecoration(
                        //   gradient: LinearGradient(
                        //     begin: Alignment.topCenter,
                        //     end: Alignment.bottomCenter,
                        //     colors: [
                        //       Colors.transparent,
                        //       Colors.black.withAlpha(150),
                        //     ],
                        //     stops: const [0.7, 1.0],
                        //   ),
                        // ),
                      ).animate(effects: [ShimmerEffect()]),
                    ),

                    Positioned(
                      bottom: 240.w,
                      right: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.w),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: ShadIconButton(
                            width: 48.w,
                            height: 60.w,
                            backgroundColor: context.colors.primaryForeground
                                .withAlpha(50),

                            decoration: ShadDecoration(
                              border: ShadBorder.all(
                                width: 2.w,
                                radius: BorderRadius.circular(24.w),
                              ),
                            ),
                            icon: Icon(
                              Icons.favorite,
                              color: movie.isFavorite ?? false
                                  ? context.colors.destructive
                                  : context.colors.primary,
                            ),
                            iconSize: 24.w,
                            onPressed: () {
                              context.read<ExploreBloc>().add(
                                ExploreEvent.toggleFavoriteStatusRequested(
                                  movieId: movie.id!,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.w),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 16.w,
                              right: 16.w,
                              top: 12.w,
                              bottom: 40.w,
                            ),
                            decoration: BoxDecoration(
                              color: context.colors.primaryForeground.withAlpha(
                                50,
                              ),
                              borderRadius: BorderRadius.circular(8.w),
                            ),
                            child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 8.w,
                                  children: [
                                    Text(
                                      movies[index].title ?? 'No Title',
                                      maxLines: 3,
                                      style: context.textTheme.h4.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          movies[index].imdbRating ??
                                              'No Rating',
                                          style: context.textTheme.muted,
                                        ),
                                        const SizedBox(width: 4),
                                        Icon(
                                          Icons.star,
                                          size: 16.w,
                                          color: AppColors.yellow,
                                        ),
                                        SizedBox(
                                          height: 24.w,
                                          child: ShadSeparator.vertical(
                                            color:
                                                context.colors.mutedForeground,
                                          ),
                                        ),
                                        Text(
                                          movies[index].year ?? 'No Year',
                                          style: context.textTheme.muted,
                                        ),
                                        SizedBox(
                                          height: 24.w,
                                          child: ShadSeparator.vertical(
                                            color:
                                                context.colors.mutedForeground,
                                          ),
                                        ),
                                        Text(
                                          movies[index].runtime ?? 'No Runtime',
                                          style: context.textTheme.muted,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      movies[index].plot ?? 'No Plot',
                                      style: context.textTheme.muted,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ).animate(
                                  effects: [
                                    MoveEffect(
                                      duration: 350.ms,
                                      begin: Offset(0, 300),
                                    ),
                                  ],
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          },
        ),
      ),
    );
  }
}
