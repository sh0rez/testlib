local helm = (import 'helm-util/helm.libsonnet').new(std.thisFile);

{
  _config: {},
}
+ helm.template('grafana', 'stable/grafana', {
  values: $._config,
})
