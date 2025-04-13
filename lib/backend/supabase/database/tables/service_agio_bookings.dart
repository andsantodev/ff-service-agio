import '../database.dart';

class ServiceAgioBookingsTable extends SupabaseTable<ServiceAgioBookingsRow> {
  @override
  String get tableName => 'service_agio_bookings';

  @override
  ServiceAgioBookingsRow createRow(Map<String, dynamic> data) =>
      ServiceAgioBookingsRow(data);
}

class ServiceAgioBookingsRow extends SupabaseDataRow {
  ServiceAgioBookingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceAgioBookingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get prestadorId => getField<int>('prestador_id');
  set prestadorId(int? value) => setField<int>('prestador_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  PostgresTime? get hora => getField<PostgresTime>('hora');
  set hora(PostgresTime? value) => setField<PostgresTime>('hora', value);
}
