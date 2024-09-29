// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUserUseCaseHash() => r'ba0af8817c2cb499c6a68852f7e6423d631fb046';

/// See also [getUserUseCase].
@ProviderFor(getUserUseCase)
final getUserUseCaseProvider = AutoDisposeFutureProvider<User>.internal(
  getUserUseCase,
  name: r'getUserUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getUserUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetUserUseCaseRef = AutoDisposeFutureProviderRef<User>;
String _$updateUserUseCaseHash() => r'a6bd568e07d0f11e2e3f85b92360a07e5b31b1a6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [updateUserUseCase].
@ProviderFor(updateUserUseCase)
const updateUserUseCaseProvider = UpdateUserUseCaseFamily();

/// See also [updateUserUseCase].
class UpdateUserUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [updateUserUseCase].
  const UpdateUserUseCaseFamily();

  /// See also [updateUserUseCase].
  UpdateUserUseCaseProvider call(
    String content,
  ) {
    return UpdateUserUseCaseProvider(
      content,
    );
  }

  @override
  UpdateUserUseCaseProvider getProviderOverride(
    covariant UpdateUserUseCaseProvider provider,
  ) {
    return call(
      provider.content,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateUserUseCaseProvider';
}

/// See also [updateUserUseCase].
class UpdateUserUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateUserUseCase].
  UpdateUserUseCaseProvider(
    String content,
  ) : this._internal(
          (ref) => updateUserUseCase(
            ref as UpdateUserUseCaseRef,
            content,
          ),
          from: updateUserUseCaseProvider,
          name: r'updateUserUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserUseCaseHash,
          dependencies: UpdateUserUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserUseCaseFamily._allTransitiveDependencies,
          content: content,
        );

  UpdateUserUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.content,
  }) : super.internal();

  final String content;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateUserUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateUserUseCaseProvider._internal(
        (ref) => create(ref as UpdateUserUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        content: content,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateUserUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateUserUseCaseProvider && other.content == content;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, content.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateUserUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `content` of this provider.
  String get content;
}

class _UpdateUserUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateUserUseCaseRef {
  _UpdateUserUseCaseProviderElement(super.provider);

  @override
  String get content => (origin as UpdateUserUseCaseProvider).content;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
