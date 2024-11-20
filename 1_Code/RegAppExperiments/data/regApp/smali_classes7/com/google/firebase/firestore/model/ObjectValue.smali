.class public final Lcom/google/firebase/firestore/model/ObjectValue;
.super Ljava/lang/Object;
.source "ObjectValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final overlayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private partialValue:Lcom/google/firestore/v1/Value;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 5
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    .line 50
    nop

    .line 51
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 50
    const-string v4, "ObjectValues should be backed by a MapValue"

    invoke-static {v0, v4, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    nop

    .line 54
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    xor-int/2addr v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    .line 53
    const-string v2, "ServerTimestamps should not be used as an ObjectValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    .line 57
    return-void
.end method

.method private applyOverlay(Lcom/google/firebase/firestore/model/FieldPath;Ljava/util/Map;)Lcom/google/firestore/v1/MapValue;
    .locals 10
    .param p1, "currentPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firestore/v1/MapValue;"
        }
    .end annotation

    .line 213
    .local p2, "currentOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 215
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    invoke-direct {p0, v1, p1}, Lcom/google/firebase/firestore/model/ObjectValue;->extractNestedValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 217
    .local v1, "existingValue":Lcom/google/firestore/v1/Value;
    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->isMapValue(Lcom/google/firestore/v1/Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/MapValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/MapValue$Builder;

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    :goto_0
    nop

    .line 223
    .local v2, "resultAtPath":Lcom/google/firestore/v1/MapValue$Builder;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 224
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 225
    .local v5, "pathSegment":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 227
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 229
    nop

    .line 230
    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/model/FieldPath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/model/FieldPath;

    move-object v8, v6

    check-cast v8, Ljava/util/Map;

    invoke-direct {p0, v7, v8}, Lcom/google/firebase/firestore/model/ObjectValue;->applyOverlay(Lcom/google/firebase/firestore/model/FieldPath;Ljava/util/Map;)Lcom/google/firestore/v1/MapValue;

    move-result-object v7

    .line 231
    .local v7, "nested":Lcom/google/firestore/v1/MapValue;
    if-eqz v7, :cond_1

    .line 232
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/firestore/v1/Value;

    invoke-virtual {v2, v5, v8}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    .line 233
    const/4 v0, 0x1

    .line 235
    .end local v7    # "nested":Lcom/google/firestore/v1/MapValue;
    :cond_1
    goto :goto_3

    :cond_2
    instance-of v7, v6, Lcom/google/firestore/v1/Value;

    if-eqz v7, :cond_3

    .line 236
    move-object v7, v6

    check-cast v7, Lcom/google/firestore/v1/Value;

    invoke-virtual {v2, v5, v7}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    .line 237
    const/4 v0, 0x1

    goto :goto_3

    .line 238
    :cond_3
    invoke-virtual {v2, v5}, Lcom/google/firestore/v1/MapValue$Builder;->containsFields(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 239
    const/4 v7, 0x0

    if-nez v6, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    const-string v9, "Expected entry to be a Map, a Value or null"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v2, v5}, Lcom/google/firestore/v1/MapValue$Builder;->removeFields(Ljava/lang/String;)Lcom/google/firestore/v1/MapValue$Builder;

    .line 241
    const/4 v0, 0x1

    .line 243
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "pathSegment":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    :goto_3
    goto :goto_1

    .line 245
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/google/firestore/v1/MapValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/MapValue;

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    return-object v3
.end method

.method private buildProto()Lcom/google/firestore/v1/Value;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->EMPTY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    iget-object v2, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/model/ObjectValue;->applyOverlay(Lcom/google/firebase/firestore/model/FieldPath;Ljava/util/Map;)Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    .line 129
    .local v1, "mergedResult":Lcom/google/firestore/v1/MapValue;
    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    iput-object v2, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    .line 131
    iget-object v2, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 133
    .end local v1    # "mergedResult":Lcom/google/firestore/v1/MapValue;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    return-object v0

    .line 133
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private extractFieldMask(Lcom/google/firestore/v1/MapValue;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 9
    .param p1, "value"    # Lcom/google/firestore/v1/MapValue;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 74
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/firebase/firestore/model/FieldPath;->fromSingleSegment(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    .line 76
    .local v3, "currentPath":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    invoke-static {v4}, Lcom/google/firebase/firestore/model/Values;->isMapValue(Lcom/google/firestore/v1/Value;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/model/ObjectValue;->extractFieldMask(Lcom/google/firestore/v1/MapValue;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v4

    .line 78
    .local v4, "nestedMask":Lcom/google/firebase/firestore/model/mutation/FieldMask;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v5

    .line 79
    .local v5, "nestedFields":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 84
    :cond_0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/model/FieldPath;

    .line 85
    .local v7, "nestedPath":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v3, v7}, Lcom/google/firebase/firestore/model/FieldPath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v7    # "nestedPath":Lcom/google/firebase/firestore/model/FieldPath;
    goto :goto_1

    .line 88
    .end local v4    # "nestedMask":Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .end local v5    # "nestedFields":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    :cond_1
    :goto_2
    goto :goto_3

    .line 89
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    .end local v3    # "currentPath":Lcom/google/firebase/firestore/model/FieldPath;
    :goto_3
    goto :goto_0

    .line 92
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v1

    return-object v1
.end method

.method private extractNestedValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p1, "value"    # Lcom/google/firestore/v1/Value;
    .param p2, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 107
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-object p1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/model/FieldPath;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isMapValue(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    return-object v2

    .line 110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldPath;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firebase/firestore/model/ObjectValue;"
        }
    .end annotation

    .line 45
    .local p0, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    new-instance v0, Lcom/google/firebase/firestore/model/ObjectValue;

    .line 46
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/firestore/v1/MapValue$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    .line 45
    return-object v0
.end method

.method private setOverlay(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V
    .locals 6
    .param p1, "path"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 174
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    .line 176
    .local v0, "currentLevel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 177
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/FieldPath;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "currentSegment":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 180
    .local v3, "currentValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 182
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    goto :goto_1

    .line 183
    :cond_0
    instance-of v4, v3, Lcom/google/firestore/v1/Value;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 184
    invoke-virtual {v4}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v4

    sget-object v5, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v4, v5, :cond_1

    .line 186
    new-instance v4, Ljava/util/HashMap;

    move-object v5, v3

    check-cast v5, Lcom/google/firestore/v1/Value;

    .line 187
    invoke-virtual {v5}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 188
    .local v4, "nextLevel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-object v0, v4

    .line 190
    .end local v4    # "nextLevel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 192
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 193
    .restart local v4    # "nextLevel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-object v0, v4

    .line 176
    .end local v2    # "currentSegment":Ljava/lang/String;
    .end local v3    # "currentValue":Ljava/lang/Object;
    .end local v4    # "nextLevel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->getLastSegment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 2

    .line 271
    new-instance v0, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->clone()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 144
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot delete field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->setOverlay(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 146
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 250
    if-ne p0, p1, :cond_0

    .line 251
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/model/ObjectValue;

    if-eqz v0, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v1}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    return v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 102
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/model/ObjectValue;->extractNestedValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->extractFieldMask(Lcom/google/firestore/v1/MapValue;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 155
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot set field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/ObjectValue;->setOverlay(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 157
    return-void
.end method

.method public setAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldPath;

    .line 162
    .local v2, "path":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/model/ObjectValue;->delete(Lcom/google/firebase/firestore/model/FieldPath;)V

    goto :goto_1

    .line 165
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/firestore/model/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 167
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    .end local v2    # "path":Lcom/google/firebase/firestore/model/FieldPath;
    :goto_1
    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectValue{internalValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
