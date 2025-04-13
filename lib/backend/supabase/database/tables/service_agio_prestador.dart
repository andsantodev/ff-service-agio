import '../database.dart';

class ServiceAgioPrestadorTable extends SupabaseTable<ServiceAgioPrestadorRow> {
  @override
  String get tableName => 'service_agio_prestador';

  @override
  ServiceAgioPrestadorRow createRow(Map<String, dynamic> data) =>
      ServiceAgioPrestadorRow(data);
}

class ServiceAgioPrestadorRow extends SupabaseDataRow {
  ServiceAgioPrestadorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ServiceAgioPrestadorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  double? get nota => getField<double>('nota');
  set nota(double? value) => setField<double>('nota', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
