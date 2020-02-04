import 'package:flutter/material.dart';
import 'package:nure_timetable/api/model/request_error.dart';
import 'package:nure_timetable/utils/functional_interfaces.dart';

import 'states.dart';

class AsyncStreamBuilder<T> extends StatelessWidget {
  final Stream<AsyncState<T>> stream;
  final VoidCallback onReload;
  final SingleValueCallback<BuildContext, Widget> initialBuilder;
  final SingleValueCallback<BuildContext, Widget> loadingBuilder;
  final DoubleValueCallback<BuildContext, T, Widget> successBuilder;
  final DoubleValueCallback<BuildContext, dynamic, Widget> failureBuilder;

  const AsyncStreamBuilder(
    this.stream, {
    this.onReload,
    this.initialBuilder,
    this.loadingBuilder,
    this.successBuilder,
    this.failureBuilder,
  }) : assert(stream != null);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AsyncState<T>>(
      stream: stream,
      builder: (context, snapshot) {
        AsyncState<T> state = snapshot.data;

        if (state is LoadingState<T>) return _buildLoadingState(context);
        if (state is SuccessState<T>) return _buildSuccessState(context, state);
        if (state is FailureState<T>) return _buildFailureState(context, state);
        return _buildInitialState(context);
      },
    );
  }

  Widget _buildLoadingState(BuildContext context) {
    return loadingBuilder != null ? loadingBuilder(context) : _buildLoading();
  }

  Widget _buildSuccessState(BuildContext context, SuccessState<T> successState) {
    return successBuilder != null ? successBuilder(context, successState.data) : _buildInitialState(context);
  }

  Widget _buildFailureState(BuildContext context, FailureState<T> failureState) {
    return failureBuilder != null ? failureBuilder(context, failureState.failure) : _buildError(failureState.failure);
  }

  Widget _buildInitialState(BuildContext context) {
    return initialBuilder != null ? initialBuilder(context) : Container();
  }

  Widget _buildLoading() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildError(dynamic errorObject) {
    String errorText;
    if (errorObject is RequestError) {
      errorText = errorObject.error;
    } else {
      errorText = '$errorObject';
    }

    return Column(
      children: <Widget>[
        Text('$errorText'),
        if (onReload != null)
          FlatButton(
            child: Text('Reload'),
            onPressed: onReload,
          )
      ],
    );
  }
}
