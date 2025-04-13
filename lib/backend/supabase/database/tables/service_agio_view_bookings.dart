import '../database.dart';

class ServiceAgioViewBookingsTable
    extends SupabaseTable<ServiceAgioViewBookingsRow> {
  @override
  String get tableName => 'service_agio_view_bookings';

  @override
  ServiceAgioViewBookingsRow createRow(Map<String, dynamic> data) =>
      ServiceAgioViewBookingsRow(data);
}

class ServiceAgioViewBookingsRow extends SupabaseDataRow {
  ServiceAgioViewBookingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceAgioViewBookingsTable();

  int? get prestadorId => getField<int>('prestador_id');
  set prestadorId(int? value) => setField<int>('prestador_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  double? get nota => getField<double>('nota');
  set nota(double? value) => setField<double>('nota', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  PostgresTime? get hora => getField<PostgresTime>('hora');
  set hora(PostgresTime? value) => setField<PostgresTime>('hora', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);
}
