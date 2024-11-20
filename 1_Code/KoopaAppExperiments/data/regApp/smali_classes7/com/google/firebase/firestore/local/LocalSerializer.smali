.class public final Lcom/google/firebase/firestore/local/LocalSerializer;
.super Ljava/lang/Object;
.source "LocalSerializer.java"


# instance fields
.field private final rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/RemoteSerializer;)V
    .locals 0
    .param p1, "rpcSerializer"    # Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 49
    return-void
.end method

.method private decodeDocument(Lcom/google/firestore/v1/Document;Z)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 4
    .param p1, "document"    # Lcom/google/firestore/v1/Document;
    .param p2, "hasCommittedMutations"    # Z

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 106
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 107
    .local v1, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    nop

    .line 109
    invoke-virtual {p1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/firestore/model/ObjectValue;->fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newFoundDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    .line 110
    .local v2, "result":Lcom/google/firebase/firestore/model/MutableDocument;
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->setHasCommittedMutations()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3
.end method

.method private decodeNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;Z)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 4
    .param p1, "proto"    # Lcom/google/firebase/firestore/proto/NoDocument;
    .param p2, "hasCommittedMutations"    # Z

    .line 125
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/NoDocument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 126
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/NoDocument;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 127
    .local v1, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    .line 128
    .local v2, "result":Lcom/google/firebase/firestore/model/MutableDocument;
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->setHasCommittedMutations()Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3
.end method

.method private decodeUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 3
    .param p1, "proto"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 145
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 146
    .local v1, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/MutableDocument;->newUnknownDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v2

    return-object v2
.end method

.method private encodeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firestore/v1/Document;
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 94
    invoke-static {}, Lcom/google/firestore/v1/Document;->newBuilder()Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    .line 95
    .local v0, "builder":Lcom/google/firestore/v1/Document$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Document$Builder;->setName(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;

    .line 96
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ObjectValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Document$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/Document$Builder;

    .line 97
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v1

    .line 98
    .local v1, "updateTime":Lcom/google/firebase/Timestamp;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Document$Builder;->setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;

    .line 99
    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Document;

    return-object v2
.end method

.method private encodeNoDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 116
    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->newBuilder()Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    move-result-object v0

    .line 117
    .local v0, "builder":Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->setName(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    .line 118
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/NoDocument;

    return-object v1
.end method

.method private encodeUnknownDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 135
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->newBuilder()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    move-result-object v0

    .line 136
    .local v0, "builder":Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->setName(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    .line 137
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->setVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    .line 138
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v1
.end method


# virtual methods
.method public decodeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firebase/firestore/bundle/BundledQuery;
    .locals 4
    .param p1, "bundledQuery"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 285
    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledQuery;->getLimitType()Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/bundle/BundledQuery$LimitType;->FIRST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    invoke-virtual {v0, v1}, Lcom/google/firestore/bundle/BundledQuery$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    goto :goto_0

    .line 287
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    :goto_0
    nop

    .line 288
    .local v0, "limitType":Lcom/google/firebase/firestore/core/Query$LimitType;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 290
    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledQuery;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledQuery;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v3

    .line 289
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeQueryTarget(Ljava/lang/String;Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    .line 292
    .local v1, "target":Lcom/google/firebase/firestore/core/Target;
    new-instance v2, Lcom/google/firebase/firestore/bundle/BundledQuery;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/firestore/bundle/BundledQuery;-><init>(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/core/Query$LimitType;)V

    return-object v2
.end method

.method public decodeFieldIndexSegments(Lcom/google/firestore/admin/v1/Index;)Ljava/util/List;
    .locals 6
    .param p1, "index"    # Lcom/google/firestore/admin/v1/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/admin/v1/Index;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index;->getFieldsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 320
    .local v2, "field":Lcom/google/firestore/admin/v1/Index$IndexField;
    invoke-virtual {v2}, Lcom/google/firestore/admin/v1/Index$IndexField;->getFieldPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    .line 322
    .local v3, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v2}, Lcom/google/firestore/admin/v1/Index$IndexField;->getValueModeCase()Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    move-result-object v4

    sget-object v5, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->ARRAY_CONFIG:Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    invoke-virtual {v4, v5}, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    goto :goto_1

    .line 324
    :cond_0
    invoke-virtual {v2}, Lcom/google/firestore/admin/v1/Index$IndexField;->getOrder()Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    move-result-object v4

    sget-object v5, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ASCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    invoke-virtual {v4, v5}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    goto :goto_1

    .line 326
    :cond_1
    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->DESCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    :goto_1
    nop

    .line 327
    .local v4, "kind":Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;
    invoke-static {v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v2    # "field":Lcom/google/firestore/admin/v1/Index$IndexField;
    .end local v3    # "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    .end local v4    # "kind":Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;
    goto :goto_0

    .line 329
    :cond_2
    return-object v0
.end method

.method decodeMaybeDocument(Lcom/google/firebase/firestore/proto/MaybeDocument;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 2
    .param p1, "proto"    # Lcom/google/firebase/firestore/proto/MaybeDocument;

    .line 73
    sget-object v0, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const-string v0, "Unknown MaybeDocument %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getHasCommittedMutations()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;Z)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getHasCommittedMutations()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/local/LocalSerializer;->decodeDocument(Lcom/google/firestore/v1/Document;Z)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;
    .locals 1
    .param p1, "mutation"    # Lcom/google/firestore/v1/Write;

    .line 333
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v0

    return-object v0
.end method

.method decodeMutationBatch(Lcom/google/firebase/firestore/proto/WriteBatch;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
    .locals 13
    .param p1, "batch"    # Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 167
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBatchId()I

    move-result v0

    .line 168
    .local v0, "batchId":I
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getLocalWriteTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/Timestamp;

    move-result-object v1

    .line 170
    .local v1, "localWriteTime":Lcom/google/firebase/Timestamp;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWritesCount()I

    move-result v2

    .line 171
    .local v2, "baseMutationsCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v3, "baseMutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 173
    iget-object v5, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v4, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 183
    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v6

    .line 184
    .local v6, "currentMutation":Lcom/google/firestore/v1/Write;
    add-int/lit8 v7, v5, 0x1

    .line 185
    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v8, :cond_1

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firestore/v1/Write;->hasTransform()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    goto :goto_2

    :cond_1
    move v7, v9

    .line 186
    .local v7, "hasTransform":Z
    :goto_2
    if-eqz v7, :cond_3

    .line 187
    nop

    .line 188
    invoke-virtual {p1, v5}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firestore/v1/Write;->hasUpdate()Z

    move-result v8

    new-array v9, v9, [Ljava/lang/Object;

    .line 187
    const-string v11, "TransformMutation should be preceded by a patch or set mutation"

    invoke-static {v8, v11, v9}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {v6}, Lcom/google/firestore/v1/Write;->newBuilder(Lcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/Write$Builder;

    move-result-object v8

    .line 191
    .local v8, "newMutationBuilder":Lcom/google/firestore/v1/Write$Builder;
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v9

    .line 193
    .local v9, "transformMutation":Lcom/google/firestore/v1/Write;
    invoke-virtual {v9}, Lcom/google/firestore/v1/Write;->getTransform()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/firestore/v1/DocumentTransform;->getFieldTransformsList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 194
    .local v12, "fieldTransform":Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    invoke-virtual {v8, v12}, Lcom/google/firestore/v1/Write$Builder;->addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;

    .line 195
    .end local v12    # "fieldTransform":Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    goto :goto_3

    .line 196
    :cond_2
    iget-object v11, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v8}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v12

    check-cast v12, Lcom/google/firestore/v1/Write;

    invoke-virtual {v11, v12}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    nop

    .end local v8    # "newMutationBuilder":Lcom/google/firestore/v1/Write$Builder;
    .end local v9    # "transformMutation":Lcom/google/firestore/v1/Write;
    add-int/lit8 v5, v5, 0x1

    .line 198
    goto :goto_4

    .line 199
    :cond_3
    iget-object v8, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v8, v6}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v6    # "currentMutation":Lcom/google/firestore/v1/Write;
    .end local v7    # "hasTransform":Z
    :goto_4
    add-int/2addr v5, v10

    goto :goto_1

    .line 203
    .end local v5    # "i":I
    :cond_4
    new-instance v5, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;-><init>(ILcom/google/firebase/Timestamp;Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method

.method decodeTargetData(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 19
    .param p1, "targetProto"    # Lcom/google/firebase/firestore/proto/Target;

    .line 235
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getTargetId()I

    move-result v11

    .line 236
    .local v11, "targetId":I
    iget-object v1, v0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v12

    .line 237
    .local v12, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    iget-object v1, v0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v13

    .line 239
    .local v13, "lastLimboFreeSnapshotVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v14

    .line 240
    .local v14, "resumeToken":Lcom/google/protobuf/ByteString;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getLastListenSequenceNumber()J

    move-result-wide v15

    .line 243
    .local v15, "sequenceNumber":J
    sget-object v1, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unknown targetType %d"

    invoke-static {v2, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 249
    :pswitch_0
    iget-object v1, v0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getQuery()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeQueryTarget(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    .line 250
    .local v1, "target":Lcom/google/firebase/firestore/core/Target;
    move-object/from16 v17, v1

    goto :goto_0

    .line 245
    .end local v1    # "target":Lcom/google/firebase/firestore/core/Target;
    :pswitch_1
    iget-object v1, v0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/firestore/proto/Target;->getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeDocumentsTarget(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    .line 246
    .restart local v1    # "target":Lcom/google/firebase/firestore/core/Target;
    move-object/from16 v17, v1

    .line 256
    .end local v1    # "target":Lcom/google/firebase/firestore/core/Target;
    .local v17, "target":Lcom/google/firebase/firestore/core/Target;
    :goto_0
    new-instance v18, Lcom/google/firebase/firestore/local/TargetData;

    sget-object v6, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    const/4 v10, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move v3, v11

    move-wide v4, v15

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/firestore/local/TargetData;-><init>(Lcom/google/firebase/firestore/core/Target;IJLcom/google/firebase/firestore/local/QueryPurpose;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/protobuf/ByteString;Ljava/lang/Integer;)V

    return-object v18

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encodeBundledQuery(Lcom/google/firebase/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 4
    .param p1, "bundledQuery"    # Lcom/google/firebase/firestore/bundle/BundledQuery;

    .line 268
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 269
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundledQuery;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeQueryTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    .line 272
    .local v0, "queryTarget":Lcom/google/firestore/v1/Target$QueryTarget;
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->newBuilder()Lcom/google/firestore/bundle/BundledQuery$Builder;

    move-result-object v1

    .line 273
    .local v1, "result":Lcom/google/firestore/bundle/BundledQuery$Builder;
    nop

    .line 274
    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundledQuery;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/Query$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    sget-object v2, Lcom/google/firestore/bundle/BundledQuery$LimitType;->FIRST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    goto :goto_0

    .line 276
    :cond_0
    sget-object v2, Lcom/google/firestore/bundle/BundledQuery$LimitType;->LAST:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 273
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/firestore/bundle/BundledQuery$Builder;->setLimitType(Lcom/google/firestore/bundle/BundledQuery$LimitType;)Lcom/google/firestore/bundle/BundledQuery$Builder;

    .line 277
    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/bundle/BundledQuery$Builder;->setParent(Ljava/lang/String;)Lcom/google/firestore/bundle/BundledQuery$Builder;

    .line 278
    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/bundle/BundledQuery$Builder;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;

    .line 280
    invoke-virtual {v1}, Lcom/google/firestore/bundle/BundledQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/bundle/BundledQuery;

    return-object v2
.end method

.method public encodeFieldIndexSegments(Ljava/util/List;)Lcom/google/firestore/admin/v1/Index;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            ">;)",
            "Lcom/google/firestore/admin/v1/Index;"
        }
    .end annotation

    .line 296
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    invoke-static {}, Lcom/google/firestore/admin/v1/Index;->newBuilder()Lcom/google/firestore/admin/v1/Index$Builder;

    move-result-object v0

    .line 299
    .local v0, "index":Lcom/google/firestore/admin/v1/Index$Builder;
    sget-object v1, Lcom/google/firestore/admin/v1/Index$QueryScope;->COLLECTION_GROUP:Lcom/google/firestore/admin/v1/Index$QueryScope;

    invoke-virtual {v0, v1}, Lcom/google/firestore/admin/v1/Index$Builder;->setQueryScope(Lcom/google/firestore/admin/v1/Index$QueryScope;)Lcom/google/firestore/admin/v1/Index$Builder;

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 302
    .local v2, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-static {}, Lcom/google/firestore/admin/v1/Index$IndexField;->newBuilder()Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    move-result-object v3

    .line 303
    .local v3, "indexField":Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 304
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    if-ne v4, v5, :cond_0

    .line 305
    sget-object v4, Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;->CONTAINS:Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    invoke-virtual {v3, v4}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->setArrayConfig(Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    goto :goto_1

    .line 306
    :cond_0
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    if-ne v4, v5, :cond_1

    .line 307
    sget-object v4, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ASCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    invoke-virtual {v3, v4}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->setOrder(Lcom/google/firestore/admin/v1/Index$IndexField$Order;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    goto :goto_1

    .line 309
    :cond_1
    sget-object v4, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->DESCENDING:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    invoke-virtual {v3, v4}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;->setOrder(Lcom/google/firestore/admin/v1/Index$IndexField$Order;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    .line 311
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/firestore/admin/v1/Index$Builder;->addFields(Lcom/google/firestore/admin/v1/Index$IndexField$Builder;)Lcom/google/firestore/admin/v1/Index$Builder;

    .line 312
    .end local v2    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .end local v3    # "indexField":Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/admin/v1/Index;

    return-object v1
.end method

.method encodeMaybeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument;
    .locals 3
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 54
    invoke-static {}, Lcom/google/firebase/firestore/proto/MaybeDocument;->newBuilder()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->isNoDocument()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeNoDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->isFoundDocument()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firestore/v1/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->isUnknownDocument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/local/LocalSerializer;->encodeUnknownDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    .line 66
    :goto_0
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->hasCommittedMutations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->setHasCommittedMutations(Z)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;

    .line 68
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/MaybeDocument;

    return-object v1

    .line 63
    :cond_2
    const-string v1, "Cannot encode invalid document %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "mutation"    # Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 337
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;

    move-result-object v0

    return-object v0
.end method

.method encodeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 4
    .param p1, "batch"    # Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    .line 152
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->newBuilder()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    move-result-object v0

    .line 154
    .local v0, "result":Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBatchId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->setBatchId(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    .line 155
    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getLocalWriteTime()Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->setLocalWriteTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getBaseMutations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 157
    .local v2, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->addBaseWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    .line 158
    .end local v2    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/MutationBatch;->getMutations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 160
    .restart local v2    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    iget-object v3, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->addWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    .line 161
    .end local v2    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v1
.end method

.method encodeTargetData(Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firebase/firestore/proto/Target;
    .locals 4
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 207
    sget-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 208
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getPurpose()Lcom/google/firebase/firestore/local/QueryPurpose;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/local/QueryPurpose;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 211
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getPurpose()Lcom/google/firebase/firestore/local/QueryPurpose;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 207
    const-string v2, "Only queries with purpose %s may be stored, got %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->newBuilder()Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v0

    .line 216
    .local v0, "result":Lcom/google/firebase/firestore/proto/Target$Builder;
    nop

    .line 217
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/proto/Target$Builder;->setTargetId(I)Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/proto/Target$Builder;->setLastListenSequenceNumber(J)Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 220
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/proto/Target$Builder;->setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 221
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/proto/Target$Builder;->setSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/proto/Target$Builder;->setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/Target$Builder;

    .line 224
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    .line 225
    .local v1, "target":Lcom/google/firebase/firestore/core/Target;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->isDocumentQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeDocumentsTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/proto/Target$Builder;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;

    goto :goto_0

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalSerializer;->rpcSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeQueryTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/proto/Target$Builder;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;

    .line 231
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/proto/Target;

    return-object v2
.end method
