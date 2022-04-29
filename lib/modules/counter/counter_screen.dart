import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_designs/modules/counter/bloc/cubit.dart';
import 'package:simple_designs/modules/counter/bloc/states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if (state is CounterPlusState) {
            //print("plud state ${state.counter}");
          }
          if (state is CounterMunisState) {
            //print("munis state ${state.counter}");
          }
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text(
              'Counter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 11.0,
                    ),
                    color: Colors.blueAccent,
                    child: TextButton(
                      onPressed: () {
                        CounterCubit.get(context).plus();
                      },
                      child: const Text(
                        'PLUS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                Text(
                  '${CounterCubit.get(context).counter}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(
                  width: 80.0,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 7.0,
                    ),
                    color: Colors.blueAccent,
                    child: TextButton(
                      onPressed: () {
                        CounterCubit.get(context).munis();
                      },
                      child: const Text(
                        'MUNIS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
