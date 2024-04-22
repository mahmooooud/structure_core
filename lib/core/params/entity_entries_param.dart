/// TODO refactor to be in entity feature
class EntityEntriesParam {
  final String entityId;
  final String? view;
  final filterParams;

  EntityEntriesParam(
      {required this.entityId, required this.filterParams, this.view});
}
