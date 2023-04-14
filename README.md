# flutter_login_mobx_mono

A simple flutter login using mobx and monorepo.

## Getting Started

### Running
```
git clone https://github.com/mthsena/flutter_login_mobx_mono.git && 
cd flutter_login_mobx_mono &&
cd flutter_login_mobx_mono_common && flutter clean && flutter pub get && cd .. && 
cd flutter_login_mobx_mono_theming && flutter clean && flutter pub get && cd .. && 
cd flutter_login_mobx_mono_user && flutter clean && flutter pub get && cd .. && 
cd flutter_login_mobx_mono_authentication && flutter clean && flutter pub get && cd .. && 
cd flutter_login_mobx_mono && flutter clean && flutter pub get && cd .. && 
cd flutter_login_mobx_mono && 
flutter create --project-name flutter_login_mobx_mono --platforms=web . &&
rm -rf test && 
flutter run -d chrome
```
