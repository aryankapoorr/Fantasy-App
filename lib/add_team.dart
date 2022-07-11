import 'package:flutter/material.dart';
import './drawer.dart';

class AddTeam extends StatefulWidget {
  static const String routeName = '/AddTeam';
  const AddTeam({Key? key}) : super(key: key);

  State<AddTeam> createState() => _AddTeamState();
}

class _AddTeamState extends State<AddTeam> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static const List<String> options = <String>[
    'Aaron Rodgers',
    'Tom Brady',
    'Dak Prescott',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add a Team'),
          centerTitle: true,
        ),
        drawer: CreateDrawer(context),
        body: Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Quarterback'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Running Back 1'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Running Back 2'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Wide Reciever 1'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Wide Reciever 2'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Tight End'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Flex'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Defense/Special Teams'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Divider(
                      height: 20,
                    ),
                    Text('Kicker'),
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue val) {
                        if (val.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return options.where((String option) {
                          return option.contains(val.text.toLowerCase());
                        });
                      },
                      onSelected: (String selection) {
                        debugPrint('You just selected $selection');
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
