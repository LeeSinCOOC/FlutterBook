# Flutter Book

## 下载并配置fvm
```
dart pub global activate fvm
```

## 使用fvm
+ fvm install <版本号>：安装指定版本的Flutter。
+ fvm use <版本号>：设置当前项目的Flutter版本。

## 在项目的 pubspec.yaml 文件中指定 Flutter 版本
```
fvm:
  sdk:
    version: ^<version>
```