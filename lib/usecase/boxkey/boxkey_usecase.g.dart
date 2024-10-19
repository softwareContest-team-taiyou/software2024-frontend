// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boxkey_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$initCreateBoxKeyUseCaseHash() =>
    r'238f426f51bbf9556eb268b0858a90f5f558aa73';

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

/// See also [initCreateBoxKeyUseCase].
@ProviderFor(initCreateBoxKeyUseCase)
const initCreateBoxKeyUseCaseProvider = InitCreateBoxKeyUseCaseFamily();

/// See also [initCreateBoxKeyUseCase].
class InitCreateBoxKeyUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [initCreateBoxKeyUseCase].
  const InitCreateBoxKeyUseCaseFamily();

  /// See also [initCreateBoxKeyUseCase].
  InitCreateBoxKeyUseCaseProvider call(
    String boxId,
    String boxName,
    String keyId,
    String keyName,
  ) {
    return InitCreateBoxKeyUseCaseProvider(
      boxId,
      boxName,
      keyId,
      keyName,
    );
  }

  @override
  InitCreateBoxKeyUseCaseProvider getProviderOverride(
    covariant InitCreateBoxKeyUseCaseProvider provider,
  ) {
    return call(
      provider.boxId,
      provider.boxName,
      provider.keyId,
      provider.keyName,
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
  String? get name => r'initCreateBoxKeyUseCaseProvider';
}

/// See also [initCreateBoxKeyUseCase].
class InitCreateBoxKeyUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [initCreateBoxKeyUseCase].
  InitCreateBoxKeyUseCaseProvider(
    String boxId,
    String boxName,
    String keyId,
    String keyName,
  ) : this._internal(
          (ref) => initCreateBoxKeyUseCase(
            ref as InitCreateBoxKeyUseCaseRef,
            boxId,
            boxName,
            keyId,
            keyName,
          ),
          from: initCreateBoxKeyUseCaseProvider,
          name: r'initCreateBoxKeyUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$initCreateBoxKeyUseCaseHash,
          dependencies: InitCreateBoxKeyUseCaseFamily._dependencies,
          allTransitiveDependencies:
              InitCreateBoxKeyUseCaseFamily._allTransitiveDependencies,
          boxId: boxId,
          boxName: boxName,
          keyId: keyId,
          keyName: keyName,
        );

  InitCreateBoxKeyUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.boxId,
    required this.boxName,
    required this.keyId,
    required this.keyName,
  }) : super.internal();

  final String boxId;
  final String boxName;
  final String keyId;
  final String keyName;

  @override
  Override overrideWith(
    FutureOr<void> Function(InitCreateBoxKeyUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InitCreateBoxKeyUseCaseProvider._internal(
        (ref) => create(ref as InitCreateBoxKeyUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        boxId: boxId,
        boxName: boxName,
        keyId: keyId,
        keyName: keyName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InitCreateBoxKeyUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InitCreateBoxKeyUseCaseProvider &&
        other.boxId == boxId &&
        other.boxName == boxName &&
        other.keyId == keyId &&
        other.keyName == keyName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, boxId.hashCode);
    hash = _SystemHash.combine(hash, boxName.hashCode);
    hash = _SystemHash.combine(hash, keyId.hashCode);
    hash = _SystemHash.combine(hash, keyName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin InitCreateBoxKeyUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `boxId` of this provider.
  String get boxId;

  /// The parameter `boxName` of this provider.
  String get boxName;

  /// The parameter `keyId` of this provider.
  String get keyId;

  /// The parameter `keyName` of this provider.
  String get keyName;
}

class _InitCreateBoxKeyUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with InitCreateBoxKeyUseCaseRef {
  _InitCreateBoxKeyUseCaseProviderElement(super.provider);

  @override
  String get boxId => (origin as InitCreateBoxKeyUseCaseProvider).boxId;
  @override
  String get boxName => (origin as InitCreateBoxKeyUseCaseProvider).boxName;
  @override
  String get keyId => (origin as InitCreateBoxKeyUseCaseProvider).keyId;
  @override
  String get keyName => (origin as InitCreateBoxKeyUseCaseProvider).keyName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
