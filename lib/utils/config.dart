import 'package:client/models/config.dart';
import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

abstract class Config {
  static Future<void> ensureInitialized() async {
    _secrets = await rootBundle.loadString('assets/local/secrets.yaml');
  }

  static late final String _secrets;

  static Map<dynamic, dynamic> _parseSecret(String key) {
    final list = loadYaml(_secrets)[key] as YamlList;
    return list.fold(
      {},
      (conf, entry) => conf..addAll(entry)
    );
  }

  static ServerConfig get serverConfig {
    final conf = _parseSecret('server');
    return ServerConfig(
      host: conf['host'],
      port: conf['port'],
    );
  }
}
