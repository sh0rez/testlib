local helm = (import 'helm-util/helm.libsonnet').new(std.thisFile);

{
  _config: {},
  data: helm.template('grafana', './charts/grafana', {
    values: $._config,
  }),
}
