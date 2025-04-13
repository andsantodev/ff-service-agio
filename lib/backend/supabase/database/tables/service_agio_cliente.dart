import '../database.dart';

class ServiceAgioClienteTable extends SupabaseTable<ServiceAgioClienteRow> {
  @override
  String get tableName => 'service_agio_cliente';

  @override
  ServiceAgioClienteRow createRow(Map<String, dynamic> data) =>
      ServiceAgioClienteRow(data);
}

class ServiceAgioClienteRow extends SupabaseDataRow {
  ServiceAgioClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceAgioClienteTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
