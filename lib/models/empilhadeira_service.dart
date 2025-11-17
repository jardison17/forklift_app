import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/empilhadeira_model..dart';

class EmpilhadeiraService {
  // Correto e seguro
  SupabaseClient get supabase => Supabase.instance.client;

  /// Buscar todas as empilhadeiras
  Future<List<Empilhadeira>> getAll() async {
    final response = await supabase
        .from('empilhadeiras_ty')
        .select()
        .order('prefixo', ascending: true);

    return response
        .map<Empilhadeira>((json) => Empilhadeira.fromJson(json))
        .toList();
  }

  /// Buscar empilhadeira por ID
  Future<Empilhadeira?> getById(String id) async {
    final response =
        await supabase
            .from('empilhadeiras_ty')
            .select()
            .eq('id', id)
            .maybeSingle();

    if (response == null) return null;
    return Empilhadeira.fromJson(response);
  }

  /// Buscar por prefixo exato
  Future<Empilhadeira?> getByPrefixo(String prefixo) async {
    final response =
        await supabase
            .from('empilhadeiras_ty')
            .select()
            .eq('prefixo', prefixo)
            .maybeSingle();

    if (response == null) return null;
    return Empilhadeira.fromJson(response);
  }

  /// Buscar todas as empilhadeiras ativas
  Future<List<Empilhadeira>> getAtivas() async {
    final response = await supabase
        .from('empilhadeiras_ty')
        .select()
        .eq('status', 'ativo')
        .order('prefixo', ascending: true);

    return response
        .map<Empilhadeira>((json) => Empilhadeira.fromJson(json))
        .toList();
  }
}
