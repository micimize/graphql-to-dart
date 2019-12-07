
enum CalendarEventField {
  _typename,
  entityId,
  validFrom,
  validUntil,
}

bool Function(T t) _not<T>(bool Function(T t) p) => (T t) => !p(t);


class CalendarEvent extends Entity implements ToJson, Node {

  /// Only graphql base schema types have truly required fields
  static Set<CalendarEventFields> objectTypeRequiredFields;

  Set<CalendarEventFields> _selectionSet;

  String __typename;

  
  String _entityId;

  PGDateTime _validFrom;

  PGDateTime _validUntil;


  _getField(CalendarEventField field){
    switch(field){
      case CalendarEventField._typename:
        return __typename;
      case CalendarEventField.entityId:
        return _entityId;
      case CalendarEventField.validFrom:
        return _validFrom;
      case CalendarEventField.validUntil:
        return _validUntil;
    }
    return null;
  }

  _setField(CalendarEventField field, Object value, [bool raise = false]){
    switch(field){
      case CalendarEventField._typename:
        return __typename;
      case CalendarEventField.entityId:
        return _entityId;
      case CalendarEventField.validFrom:
        return _validFrom;
      case CalendarEventField.validUntil:
        return _validUntil;
    }
    return null;
  }

  bool _hasValue(CalendarEventField field) => _getField(field) != null;


  CalendarEvent._( this._selectionSet, {
    String entityId,
    PGDateTime validFrom,
    PGDateTime validUntil,
  }):
  _entityId = entityId,
  _validFrom = validFrom,
  _validUntil = validUntil;

  /// Construct an empty `CalendarEvent`
  CalendarEvent.empty();


  void validate() {
    final missingFields = requiredFields.where(_not(_hasValue));
    assert(missingFields.isEmpty, "${this.runtimeType}#${hashCode} is missing required fields ${missingFields}"); 

  }

  @override
  List<Object> get props => [_entityId];


  bool get isValid => 


  /// Adds all fields from [other] to this `CalendarEvent`.
  /// 
  /// If a field from [other] is already in this `CalendarEvent`,
  /// its value is overwritten, unless  `overwrite: true` is specified
  void addAll(covariant CalendarEvent other, { bool overwrite = true, }) {
     assert(other != null, "Cannot add all from null into $this");
     if (overwrite != null && overwrite){
        
        nodeId = other.nodeId ?? nodeId;
        entityId = other.entityId ?? entityId;
        validFrom = other.validFrom ?? validFrom;
        validUntil = other.validUntil ?? validUntil;
        versionId = other.versionId ?? versionId;
        id = other.id ?? id;
        eventId = other.eventId ?? eventId;
        start = other.start ?? start;
        end = other.end ?? end;
        recurrenceRule = other.recurrenceRule ?? recurrenceRule;
        eventByEventId = other.eventByEventId ?? eventByEventId;
     } else {
        
        nodeId ??= other.nodeId;
        entityId ??= other.entityId;
        validFrom ??= other.validFrom;
        validUntil ??= other.validUntil;
        versionId ??= other.versionId;
        id ??= other.id;
        eventId ??= other.eventId;
        start ??= other.start;
        end ??= other.end;
        recurrenceRule ??= other.recurrenceRule;
        eventByEventId ??= other.eventByEventId;
     }
  }

  /// Creates a copy of this `CalendarEvent` but with the given fields replaced with the new values.
  CalendarEvent copyWith({        
            String nodeId,        
            String entityId,        
            PGDateTime validFrom,        
            PGDateTime validUntil,        
            TemporalId versionId,        
            TemporalId id,        
            TemporalId eventId,        
            DateTime start,        
            DateTime end,        
            RecurrenceRule recurrenceRule,        
            Event eventByEventId,
    }){
        return CalendarEvent(
            
            nodeId: nodeId ?? this.nodeId,
            entityId: entityId ?? this.entityId,
            validFrom: validFrom ?? this.validFrom,
            validUntil: validUntil ?? this.validUntil,
            versionId: versionId ?? this.versionId,
            id: id ?? this.id,
            eventId: eventId ?? this.eventId,
            start: start ?? this.start,
            end: end ?? this.end,
            recurrenceRule: recurrenceRule ?? this.recurrenceRule,
            eventByEventId: eventByEventId ?? this.eventByEventId,
        );
  }

  /// Creates a copy of this `CalendarEvent`
  CalendarEvent copy() => copyWith();


  factory CalendarEvent.fromJson(Map<String, dynamic> json) => 
    deserializeFromJson(json);

  Map<String, dynamic> toJson() => serializeToJson(this);

  static CalendarEvent deserializeFromJson(Map<String, dynamic> json){
    CalendarEvent instance = _$CalendarEventFromJson(json);
    // for handling inline fragment logic 
    instance.__typename = json['__typename'] as String;

    return instance;
  }


  static Map<String, dynamic> serializeToJson(CalendarEvent instance){
    Map<String, dynamic> json = _$CalendarEventToJson(instance);

    return json;
  }

}