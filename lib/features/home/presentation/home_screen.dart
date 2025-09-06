import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:moneymemos/core/const/pref_const.dart';
import 'package:moneymemos/core/theme/bloc/theme_bloc.dart';
import 'package:moneymemos/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:moneymemos/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:moneymemos/routes/route_names.dart';
import 'package:moneymemos/utils/extensions/widget_provider.dart';
import 'package:moneymemos/utils/prefrence_utils.dart';
import 'package:moneymemos/widgets/buttons/i_elevated_button.dart';
import 'package:moneymemos/widgets/buttons/i_outline_button.dart';
import 'package:moneymemos/widgets/cusotm_appbar.dart';
import 'package:moneymemos/widgets/i_tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  static final _tabs = [
    Tab(text: "Tab 1"),
    Tab(text: "Tab 2"),
    Tab(text: "Tab 3"),
    Tab(text: "Tab 4"),
  ];

  late List<Widget> _childerens;

  Widget _item(String title) => ListView.builder(
    shrinkWrap: true,
    itemBuilder: (_, __) => ListTile(title: Text(title)),
    itemCount: 100,
  );
  @override
  void initState() {
    _childerens = [
      _item("All Coins"),
      _item("Watchlist"),
      _item("Gainers"),
      _item("Losers"),
    ];

    /// to dynamically change the tab index using intial index value
    _tabController = TabController(
      initialIndex: 0,
      length: _tabs.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (_) => GetIt.I<AuthBloc>(),
      child: Scaffold(
        appBar: CustomAppbar(title: widget.title),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Builder(
                  builder: (context) {
                    return BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.mapOrNull(
                          loggedOut: (value) async {
                            await PreferenceUtils.putBool(
                              PrefConst.isLoggedIn,
                              false,
                            );
                            if (!context.mounted) return;
                            context.goNamed(RouteNames.welcome);
                          },
                        );
                      },
                      child: Center(
                        child: IElevatedButton(
                          trailingIcon: Icon(Icons.add),
                          onPressed: () {
                            context.read<AuthBloc>().add(Logout());
                          },
                          text: widget.title,
                        ),
                      ),
                    );
                  },
                ),
                Center(
                  child: IOutlineButton(
                    leadingIcon: Icon(Icons.home),
                    onPressed: () async {
                      await GetIt.I<DashboardRepository>().loadBonds();
                    },
                    text: widget.title,
                  ),
                ),
                BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return IconButton(
                      icon: Icon(
                        state.themeMode == ThemeMode.dark
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                      onPressed: () {
                        context.read<ThemeBloc>().add(
                          ChangeTheme(isDarkMode: true),
                        );
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 44,
                  child: ITabBar(
                    tabController: _tabController,
                    tabs: _tabs,
                    onTap: (i) => {
                      // _marketDetailsController.changeTab(i)
                    },
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                  ).horizontalPadding(16),
                ),
              ]),
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: _childerens.map((i) => i).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
