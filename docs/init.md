# ios の場合

## アプリ名の変更

1. 「 /ios/Runner.xcodeproj/project.pbxproj」の PRODUCT_BUNDLE_IDENTIFIER」箇所を全て変更する。

```
- PRODUCT_BUNDLE_IDENTIFIER = com.example.sampleApp;
+ PRODUCT_BUNDLE_IDENTIFIER = com.tmp.newSampleApp;
```

> [!TIP]
> 命名規則は、会社ドメインまたは、プロジェクトドメインに合わせて設定した方がいよい。あなたの会社のウェブサイトが example.com の場合、バンドル識別子は com.example.appname のようになります。

<br>
<br>

2. 「/ios/Runner/Info.plist」の「CFBundleDisplayName」箇所を変更。

```
	<key>CFBundleDisplayName</key>
-	<string>Sample App</string>
+	<string>New Sample App</string>
```

3.  CI/CD の sercret と権限のリポジトリーの setting を変更する。

- [CI/CD について](./cicd.md)

4. Auth0 の設定

- [Auth0 について](./auth0.md)
