library;

import 'dart:convert';

import 'package:app/app.config.dart';
import 'package:app/config/router/route_name.dart';
import 'package:app/config/router/router.dart';
import 'package:chuck_interceptor/chuck.dart';
import 'package:chuck_interceptor/core/chuck_dio_interceptor.dart';
import 'package:data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

part 'init.dart';

part 'injection/app_injection.dart';

part 'core/options/app_options.dart';

part 'core/extensions/context_extensions.dart';

part 'core/i18n/app_localizations.dart';

part 'core/i18n/app_localization_setup.dart';

part 'core/i18n/app_localization_delegate.dart';

part 'core/env/.env.dart';
part 'injection/app_module.dart';
