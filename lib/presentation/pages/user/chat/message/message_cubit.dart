import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:signalr_pure/signalr_pure.dart';

part 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {
  MessageCubit() : super(MessageInitial());

  final token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjEiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJBZG1pbiIsIm5iZiI6MTY4MDcxNzk4MiwiZXhwIjoxNjgwNzg5OTgyLCJpc3MiOiJkaXNjby1hcGkiLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0L0Rpc2NvLkFwaSJ9.sK597xsdJVhdR8VYyRsHJs-_F0K7i7X8FxokrXIoms8';

  final HubConnectionBuilder _connectionBuilder = HubConnectionBuilder();

  void init() async {
    final options = HttpConnectionOptions();
    options.accessTokenBuilder = () async => token;
    options.transport = HttpTransportType.webSockets;

    final builder = HubConnectionBuilder()
      ..url = 'wss://devdiscoapi.azurewebsites.net/hub/chat'
      ..logLevel = LogLevel.information
      ..httpConnectionOptions = options
      ..reconnect = true;
    final connection = builder.build();
    connection.on('sendAsync', (newList) => print('Received $newList'));
    await connection.startAsync();
  }
}
