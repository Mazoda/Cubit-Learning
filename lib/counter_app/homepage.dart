
import 'package:blocapp/counter_app/counter_cubit.dart';
import 'package:blocapp/counter_app/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(1);
                        },
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamAIncrement(3);
                        },
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamBIncrement(1);
                        },
                        child: const Text(
                          'Add 1 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamBIncrement(2);
                        },
                        child: const Text(
                          'Add 2 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamBIncrement(3);
                        },
                        child: const Text(
                          'Add 3 Point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                primary: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).reset();
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    }, listener: ((context, state) {
    }));
  }
}
