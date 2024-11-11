import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';

final grpcChannelProvider = Provider.autoDispose<ClientChannel>((ref) {
  final channel = ClientChannel(
    '13.115.231.24',
    port: 3001,
    // By default .secure() is used.
    // It is also possible to configure with your own certificates.
    // The most common security issue with gRPC is missing configuration here, so be careful.
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  // Properly handle disposal of the channel when the provider is disposed.
  // ref.onDispose(() {
  //   print('disposing channel');
  //   channel.shutdown();
  // });
  return channel;
});
