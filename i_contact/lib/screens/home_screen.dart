import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_contact/blocs/all_contact/bloc/all_contact_bloc.dart';
import 'package:i_contact/blocs/base/bloc/base_bloc.dart';
import 'package:i_contact/utils/constants.dart';
import 'package:i_contact/widgets/contact_card_widget_component.dart';
import 'package:i_contact/widgets/loading_widget_component.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? loggedInUserId;

  @override
  void initState() {
    getLoggedInUserId();
    super.initState();
  }

  Future<void> getLoggedInUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      loggedInUserId = prefs.getString(
          'loggedInUserId'); // Retrieve user ID from SharedPreferences
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.LABEL_MY_CONTACTS),
      ),
      body: BlocProvider(
        create: (context) =>
            AllContactBloc()..add(const AllContactEvent.getAllContact()),
        child: ContactListView(loggedInUserId: loggedInUserId ?? ""),
      ),
    );
  }
}

class ContactListView extends StatefulWidget {
  final String loggedInUserId;
  const ContactListView({required this.loggedInUserId, super.key});

  @override
  State<ContactListView> createState() => _ContactListViewState();
}

class _ContactListViewState extends State<ContactListView> {
  final TextEditingController _searchController = TextEditingController();

  get next => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: Constants.LABEL_PLACEHOLDER_CONTACT,
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (query) {
              context
                  .read<AllContactBloc>()
                  .add(AllContactEvent.searchContact(query));
            },
          ),
        ),
        Expanded(
          child: BlocBuilder<AllContactBloc, BaseState<AllContactState>>(
            builder: (context, state) {
              return state.when(
                  loading: (_) => const LoadingWidgetComponent(),
                  next: (dataNext) {
                    return dataNext.map(loadedAllContact: (loaded) {
                      return GridView.builder(
                        padding: const EdgeInsets.all(8.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          childAspectRatio: 1,
                        ),
                        itemCount: loaded.loadedAllContact.length,
                        itemBuilder: (context, index) {
                          final contact = loaded.loadedAllContact[index];
                          final isCurrentUser =
                              contact.id == widget.loggedInUserId;

                          return ContactCardWidgetComponent(
                              contact: loaded.loadedAllContact[index],
                              isCurrentUser: isCurrentUser);
                        },
                      );
                    });
                  },
                  error: (error) {
                    return const Center(child: Text('No contacts found.'));
                  });
            },
          ),
        ),
      ],
    );
  }
}
