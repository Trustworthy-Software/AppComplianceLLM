.class public final Lcom/google/firebase/firestore/remote/RemoteSerializer;
.super Ljava/lang/Object;
.source "RemoteSerializer.java"


# instance fields
.field private final databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

.field private final databaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DatabaseId;)V
    .locals 1
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 98
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodedDatabaseId(Lcom/google/firebase/firestore/model/DatabaseId;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private decodeDocumentMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 4
    .param p1, "mask"    # Lcom/google/firestore/v1/DocumentMask;

    .line 367
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask;->getFieldPathsCount()I

    move-result v0

    .line 368
    .local v0, "count":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 369
    .local v1, "paths":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 370
    invoke-virtual {p1, v2}, Lcom/google/firestore/v1/DocumentMask;->getFieldPaths(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v2

    return-object v2
.end method

.method private decodeFieldFilterOperator(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 2
    .param p1, "operator"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 879
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 901
    const-string v0, "Unhandled FieldFilter.operator %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 899
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 897
    :pswitch_1
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 895
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 893
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 891
    :pswitch_4
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 889
    :pswitch_5
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 887
    :pswitch_6
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 885
    :pswitch_7
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 883
    :pswitch_8
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    .line 881
    :pswitch_9
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeFieldTransform(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    .locals 4
    .param p1, "fieldTransform"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 407
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getTransformTypeCase()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 432
    const-string v0, "Unknown FieldTransform proto: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 428
    :pswitch_0
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 429
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;

    .line 430
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getIncrement()Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;-><init>(Lcom/google/firestore/v1/Value;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 428
    return-object v0

    .line 423
    :pswitch_1
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 424
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;

    .line 426
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getRemoveAllFromArray()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 423
    return-object v0

    .line 418
    :pswitch_2
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 419
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;

    .line 421
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getAppendMissingElements()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 418
    return-object v0

    .line 409
    :pswitch_3
    nop

    .line 410
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->REQUEST_TIME:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 409
    const-string v2, "Unknown transform setToServerValue: %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 414
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 415
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    .line 416
    invoke-static {}, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->getInstance()Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 414
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeFilters(Lcom/google/firestore/v1/StructuredQuery$Filter;)Ljava/util/List;
    .locals 3
    .param p1, "proto"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 701
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFilter(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .line 705
    .local v0, "result":Lcom/google/firebase/firestore/core/Filter;
    instance-of v1, v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v1, :cond_0

    .line 706
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 708
    .local v1, "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/CompositeFilter;->isFlatConjunction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 713
    .end local v1    # "compositeFilter":Lcom/google/firebase/firestore/core/CompositeFilter;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private decodeFoundDocument(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 6
    .param p1, "response"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 242
    nop

    .line 243
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->FOUND:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 242
    const-string v3, "Tried to deserialize a found document from a missing document."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getFound()Lcom/google/firestore/v1/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 246
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getFound()Lcom/google/firestore/v1/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/firestore/model/ObjectValue;->fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    .line 247
    .local v2, "value":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getFound()Lcom/google/firestore/v1/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Document;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    .line 248
    .local v3, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    sget-object v4, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 249
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 248
    const-string v5, "Got a document response with no snapshot version"

    invoke-static {v4, v5, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newFoundDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v1

    return-object v1
.end method

.method private decodeMissingDocument(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 5
    .param p1, "response"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 254
    nop

    .line 255
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->MISSING:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 254
    const-string v3, "Tried to deserialize a missing document from a found document."

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getMissing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 258
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    .line 259
    .local v2, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    sget-object v3, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 260
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 259
    const-string v4, "Got a no document response with no snapshot version"

    invoke-static {v3, v4, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-static {v0, v2}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v1

    return-object v1
.end method

.method private decodeOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firebase/firestore/core/OrderBy;
    .locals 3
    .param p1, "proto"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 919
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 921
    .local v0, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    sget-object v1, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/StructuredQuery$Direction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 929
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unrecognized direction %d"

    invoke-static {v2, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 926
    :pswitch_0
    sget-object v1, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    .line 927
    .local v1, "direction":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    goto :goto_0

    .line 923
    .end local v1    # "direction":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    :pswitch_1
    sget-object v1, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    .line 924
    .restart local v1    # "direction":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    nop

    .line 931
    :goto_0
    invoke-static {v1, v0}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodePrecondition(Lcom/google/firestore/v1/Precondition;)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 2
    .param p1, "precondition"    # Lcom/google/firestore/v1/Precondition;

    .line 346
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition;->getConditionTypeCase()Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 354
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unknown precondition"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 352
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-object v0

    .line 350
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition;->getExists()Z

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    return-object v0

    .line 348
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeQueryPath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 152
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeResourceName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 153
    .local v0, "resource":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 157
    sget-object v1, Lcom/google/firebase/firestore/model/ResourcePath;->EMPTY:Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v1

    .line 159
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->extractLocalPathFromResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    return-object v1
.end method

.method private decodeResourceName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 4
    .param p1, "encoded"    # Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 178
    .local v0, "resource":Lcom/google/firebase/firestore/model/ResourcePath;
    nop

    .line 179
    invoke-static {v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->isValidResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 178
    const-string v3, "Tried to deserialize invalid key %s"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-object v0
.end method

.method private decodeUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 3
    .param p1, "proto"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 819
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 820
    .local v0, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    sget-object v1, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 830
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unrecognized UnaryFilter.operator %d"

    invoke-static {v2, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 828
    :pswitch_0
    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v2, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v1

    return-object v1

    .line 826
    :pswitch_1
    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v2, Lcom/google/firebase/firestore/model/Values;->NAN_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v1

    return-object v1

    .line 824
    :pswitch_2
    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v2, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v1

    return-object v1

    .line 822
    :pswitch_3
    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v2, Lcom/google/firebase/firestore/model/Values;->NAN_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeDocumentMask(Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firestore/v1/DocumentMask;
    .locals 4
    .param p1, "mask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 359
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->newBuilder()Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    .line 360
    .local v0, "builder":Lcom/google/firestore/v1/DocumentMask$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldPath;

    .line 361
    .local v2, "path":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/DocumentMask$Builder;->addFieldPaths(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 362
    .end local v2    # "path":Lcom/google/firebase/firestore/model/FieldPath;
    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    return-object v1
.end method

.method private encodeFieldFilterOperator(Lcom/google/firebase/firestore/core/FieldFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 2
    .param p1, "operator"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 851
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 873
    const-string v0, "Unknown operator %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 871
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 869
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 867
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 865
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 863
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 861
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 859
    :pswitch_6
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 857
    :pswitch_7
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 855
    :pswitch_8
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 853
    :pswitch_9
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeFieldPath(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 2
    .param p1, "field"    # Lcom/google/firebase/firestore/model/FieldPath;

    .line 846
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object v0
.end method

.method private encodeFieldTransform(Lcom/google/firebase/firestore/model/mutation/FieldTransform;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 5
    .param p1, "fieldTransform"    # Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 376
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    move-result-object v0

    .line 377
    .local v0, "transform":Lcom/google/firebase/firestore/model/mutation/TransformOperation;
    instance-of v1, v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    if-eqz v1, :cond_0

    .line 378
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->newBuilder()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->REQUEST_TIME:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    .line 380
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setSetToServerValue(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 378
    return-object v1

    .line 382
    :cond_0
    instance-of v1, v0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;

    if-eqz v1, :cond_1

    .line 383
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;

    .line 384
    .local v1, "union":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->newBuilder()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 385
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 386
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firestore/v1/ArrayValue$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 384
    return-object v2

    .line 388
    .end local v1    # "union":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;
    :cond_1
    instance-of v1, v0, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;

    if-eqz v1, :cond_2

    .line 389
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;

    .line 390
    .local v1, "remove":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->newBuilder()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 391
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 392
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firestore/v1/ArrayValue$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 390
    return-object v2

    .line 394
    .end local v1    # "remove":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;
    :cond_2
    instance-of v1, v0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;

    if-eqz v1, :cond_3

    .line 395
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;

    .line 397
    .local v1, "incrementOperation":Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->newBuilder()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 399
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->getOperand()Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->setIncrement(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 397
    return-object v2

    .line 402
    .end local v1    # "incrementOperation":Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;
    :cond_3
    const-string v1, "Unknown transform: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private encodeFilters(Ljava/util/List;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;"
        }
    .end annotation

    .line 695
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    new-instance v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    sget-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFilter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    return-object v0
.end method

.method private encodeLabel(Lcom/google/firebase/firestore/local/QueryPurpose;)Ljava/lang/String;
    .locals 2
    .param p1, "purpose"    # Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 471
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/QueryPurpose;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 481
    const-string v0, "Unrecognized query purpose: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 479
    :pswitch_0
    const-string v0, "limbo-document"

    return-object v0

    .line 477
    :pswitch_1
    const-string v0, "existence-filter-mismatch-bloom"

    return-object v0

    .line 475
    :pswitch_2
    const-string v0, "existence-filter-mismatch"

    return-object v0

    .line 473
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeOrderBy(Lcom/google/firebase/firestore/core/OrderBy;)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 3
    .param p1, "orderBy"    # Lcom/google/firebase/firestore/core/OrderBy;

    .line 908
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Order;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    move-result-object v0

    .line 909
    .local v0, "proto":Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$Direction;->ASCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    goto :goto_0

    .line 912
    :cond_0
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$Direction;->DESCENDING:Lcom/google/firestore/v1/StructuredQuery$Direction;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    .line 914
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFieldPath(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    .line 915
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v1
.end method

.method private encodePrecondition(Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firestore/v1/Precondition;
    .locals 4
    .param p1, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 333
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isNone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t serialize an empty precondition"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->newBuilder()Lcom/google/firestore/v1/Precondition$Builder;

    move-result-object v0

    .line 336
    .local v0, "builder":Lcom/google/firestore/v1/Precondition$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->getUpdateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->getUpdateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Precondition$Builder;->setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Precondition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Precondition;

    return-object v1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->getExists()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->getExists()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Precondition$Builder;->setExists(Z)Lcom/google/firestore/v1/Precondition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Precondition;

    return-object v1

    .line 341
    :cond_1
    const-string v1, "Unknown Precondition"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method private encodeQueryPath(Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 148
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeResourceName(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeResourceName(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;
    .locals 2
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p2, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 168
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodedDatabaseId(Lcom/google/firebase/firestore/model/DatabaseId;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    const-string v1, "documents"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodedDatabaseId(Lcom/google/firebase/firestore/model/DatabaseId;)Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 4
    .param p0, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;

    .line 185
    nop

    .line 187
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "databases"

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "projects"

    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    return-object v0
.end method

.method private static extractLocalPathFromResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 3
    .param p0, "resourceName"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 195
    nop

    .line 196
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "documents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    .line 195
    const-string v2, "Tried to deserialize invalid key %s"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popFirst(I)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method private fromStatus(Lcom/google/rpc/Status;)Lio/grpc/Status;
    .locals 2
    .param p1, "status"    # Lcom/google/rpc/Status;

    .line 1027
    invoke-virtual {p1}, Lcom/google/rpc/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lio/grpc/Status;->fromCodeValue(I)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    return-object v0
.end method

.method private static isValidResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Z
    .locals 3
    .param p0, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 206
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 207
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "projects"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "databases"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 206
    :goto_0
    return v2
.end method


# virtual methods
.method public databaseName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method decodeCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)Lcom/google/firebase/firestore/core/CompositeFilter;
    .locals 4
    .param p1, "compositeFilter"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v0, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->getFiltersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 839
    .local v2, "filter":Lcom/google/firestore/v1/StructuredQuery$Filter;
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFilter(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    .end local v2    # "filter":Lcom/google/firestore/v1/StructuredQuery$Filter;
    goto :goto_0

    .line 841
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 842
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeCompositeFilterOperator(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;)Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    .line 841
    return-object v1
.end method

.method decodeCompositeFilterOperator(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;)Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 2
    .param p1, "op"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    .line 768
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$CompositeFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 774
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Only AND and OR composite filter types are supported."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 772
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0

    .line 770
    :pswitch_1
    sget-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decodeDocumentsTarget(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/core/Target;
    .locals 5
    .param p1, "target"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 522
    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocumentsCount()I

    move-result v0

    .line 523
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "DocumentsTarget contained other than 1 document %d"

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p1, v1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocuments(I)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeQueryPath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/firestore/core/Query;->atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v2

    return-object v2
.end method

.method decodeFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)Lcom/google/firebase/firestore/core/FieldFilter;
    .locals 3
    .param p1, "proto"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 813
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 814
    .local v0, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFieldFilterOperator(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    .line 815
    .local v1, "filterOperator":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v2

    return-object v2
.end method

.method decodeFilter(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 2
    .param p1, "proto"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 799
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getFilterTypeCase()Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 807
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getFilterTypeCase()Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unrecognized Filter.filterType %d"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 805
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getUnaryFilter()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    return-object v0

    .line 803
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getFieldFilter()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v0

    return-object v0

    .line 801
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getCompositeFilter()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)Lcom/google/firebase/firestore/core/CompositeFilter;

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

.method public decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeResourceName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 138
    .local v0, "resource":Lcom/google/firebase/firestore/model/ResourcePath;
    nop

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 138
    const-string v4, "Tried to deserialize key from different project."

    invoke-static {v1, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 141
    nop

    .line 142
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 141
    const-string v3, "Tried to deserialize key from different database."

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->extractLocalPathFromResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    return-object v1
.end method

.method public decodeMaybeDocument(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 3
    .param p1, "response"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 232
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->FOUND:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFoundDocument(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->MISSING:Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMissingDocument(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown result case: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeMutation(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/model/mutation/Mutation;
    .locals 9
    .param p1, "mutation"    # Lcom/google/firestore/v1/Write;

    .line 295
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->hasCurrentDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodePrecondition(Lcom/google/firestore/v1/Precondition;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    :goto_0
    nop

    .line 299
    .local v0, "precondition":Lcom/google/firebase/firestore/model/mutation/Precondition;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 300
    .local v7, "fieldTransforms":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/FieldTransform;>;"
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getUpdateTransformsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 301
    .local v2, "fieldTransform":Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFieldTransform(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v2    # "fieldTransform":Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    goto :goto_1

    .line 304
    :cond_1
    sget-object v1, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Write$OperationCase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 328
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unknown mutation operation: %d"

    invoke-static {v2, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 325
    :pswitch_0
    new-instance v1, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getVerify()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    return-object v1

    .line 322
    :pswitch_1
    new-instance v1, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getDelete()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    return-object v1

    .line 306
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->hasUpdateMask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    new-instance v8, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    .line 308
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getUpdate()Lcom/google/firestore/v1/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 309
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getUpdate()Lcom/google/firestore/v1/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/ObjectValue;->fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v3

    .line 310
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeDocumentMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v4

    move-object v1, v8

    move-object v5, v0

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 307
    return-object v8

    .line 314
    :cond_2
    new-instance v1, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    .line 315
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getUpdate()Lcom/google/firestore/v1/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Lcom/google/firestore/v1/Write;->getUpdate()Lcom/google/firestore/v1/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/firestore/model/ObjectValue;->fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v7}, Lcom/google/firebase/firestore/model/mutation/SetMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    .line 314
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decodeMutationResult(Lcom/google/firestore/v1/WriteResult;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/MutationResult;
    .locals 5
    .param p1, "proto"    # Lcom/google/firestore/v1/WriteResult;
    .param p2, "commitVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 442
    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResult;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    .line 443
    .local v0, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    move-object v0, p2

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResult;->getTransformResultsCount()I

    move-result v1

    .line 448
    .local v1, "transformResultsCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .local v2, "transformResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 450
    invoke-virtual {p1, v3}, Lcom/google/firestore/v1/WriteResult;->getTransformResults(I)Lcom/google/firestore/v1/Value;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lcom/google/firebase/firestore/model/mutation/MutationResult;

    invoke-direct {v3, v0, v2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V

    return-object v3
.end method

.method public decodeQueryTarget(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/core/Target;
    .locals 2
    .param p1, "target"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 640
    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$QueryTarget;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$QueryTarget;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeQueryTarget(Ljava/lang/String;Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    return-object v0
.end method

.method public decodeQueryTarget(Ljava/lang/String;Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firebase/firestore/core/Target;
    .locals 22
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "query"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeQueryPath(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .line 588
    .local v2, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    const/4 v3, 0x0

    .line 589
    .local v3, "collectionGroup":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getFromCount()I

    move-result v4

    .line 590
    .local v4, "fromCount":I
    const/4 v5, 0x1

    if-lez v4, :cond_2

    .line 591
    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const-string v8, "StructuredQuery.from with more than one collection is not supported."

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-virtual {v1, v6}, Lcom/google/firestore/v1/StructuredQuery;->getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    move-result-object v6

    .line 595
    .local v6, "from":Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    invoke-virtual {v6}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getAllDescendants()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 596
    invoke-virtual {v6}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getCollectionId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 598
    :cond_1
    invoke-virtual {v6}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->getCollectionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 603
    .end local v6    # "from":Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    :cond_2
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->hasWhere()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 604
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeFilters(Lcom/google/firestore/v1/StructuredQuery$Filter;)Ljava/util/List;

    move-result-object v6

    .local v6, "filterBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    goto :goto_2

    .line 606
    .end local v6    # "filterBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 610
    .restart local v6    # "filterBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getOrderByCount()I

    move-result v15

    .line 611
    .local v15, "orderByCount":I
    if-lez v15, :cond_5

    .line 612
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v7, "orderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v15, :cond_4

    .line 614
    invoke-virtual {v1, v8}, Lcom/google/firestore/v1/StructuredQuery;->getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v16, v7

    .end local v8    # "i":I
    goto :goto_4

    .line 617
    .end local v7    # "orderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v16, v7

    .line 620
    .local v16, "orderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    :goto_4
    const-wide/16 v7, -0x1

    .line 621
    .local v7, "limit":J
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->hasLimit()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 622
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getLimit()Lcom/google/protobuf/Int32Value;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protobuf/Int32Value;->getValue()I

    move-result v9

    int-to-long v7, v9

    move-wide/from16 v17, v7

    goto :goto_5

    .line 621
    :cond_6
    move-wide/from16 v17, v7

    .line 625
    .end local v7    # "limit":J
    .local v17, "limit":J
    :goto_5
    const/4 v7, 0x0

    .line 626
    .local v7, "startAt":Lcom/google/firebase/firestore/core/Bound;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->hasStartAt()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 627
    new-instance v8, Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getStartAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firestore/v1/Cursor;->getValuesList()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getStartAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firestore/v1/Cursor;->getBefore()Z

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    move-object v7, v8

    move-object/from16 v19, v7

    goto :goto_6

    .line 626
    :cond_7
    move-object/from16 v19, v7

    .line 630
    .end local v7    # "startAt":Lcom/google/firebase/firestore/core/Bound;
    .local v19, "startAt":Lcom/google/firebase/firestore/core/Bound;
    :goto_6
    const/4 v7, 0x0

    .line 631
    .local v7, "endAt":Lcom/google/firebase/firestore/core/Bound;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->hasEndAt()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 632
    new-instance v8, Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getEndAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firestore/v1/Cursor;->getValuesList()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/firestore/v1/StructuredQuery;->getEndAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firestore/v1/Cursor;->getBefore()Z

    move-result v10

    xor-int/2addr v5, v10

    invoke-direct {v8, v9, v5}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    move-object v7, v8

    move-object v5, v7

    goto :goto_7

    .line 631
    :cond_8
    move-object v5, v7

    .line 635
    .end local v7    # "endAt":Lcom/google/firebase/firestore/core/Bound;
    .local v5, "endAt":Lcom/google/firebase/firestore/core/Bound;
    :goto_7
    new-instance v20, Lcom/google/firebase/firestore/core/Target;

    move-object/from16 v7, v20

    move-object v8, v2

    move-object v9, v3

    move-object v10, v6

    move-object/from16 v11, v16

    move-wide/from16 v12, v17

    move-object/from16 v14, v19

    move/from16 v21, v15

    .end local v15    # "orderByCount":I
    .local v21, "orderByCount":I
    move-object v15, v5

    invoke-direct/range {v7 .. v15}, Lcom/google/firebase/firestore/core/Target;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v20
.end method

.method public decodeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/Timestamp;
    .locals 4
    .param p1, "proto"    # Lcom/google/protobuf/Timestamp;

    .line 111
    new-instance v0, Lcom/google/firebase/Timestamp;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v0
.end method

.method public decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 4
    .param p1, "proto"    # Lcom/google/protobuf/Timestamp;

    .line 119
    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/Timestamp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    return-object v0
.end method

.method public decodeVersionFromListenResponse(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 2
    .param p1, "watchChange"    # Lcom/google/firestore/v1/ListenResponse;

    .line 1016
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->TARGET_CHANGE:Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    if-eq v0, v1, :cond_0

    .line 1017
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0

    .line 1019
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getTargetChange()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetIdsCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0

    .line 1022
    :cond_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getTargetChange()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    return-object v0
.end method

.method public decodeWatchChange(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firebase/firestore/remote/WatchChange;
    .locals 9
    .param p1, "protoChange"    # Lcom/google/firestore/v1/ListenResponse;

    .line 939
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1006
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown change type set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getFilter()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    .line 999
    .local v0, "protoFilter":Lcom/google/firestore/v1/ExistenceFilter;
    new-instance v1, Lcom/google/firebase/firestore/remote/ExistenceFilter;

    .line 1000
    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/remote/ExistenceFilter;-><init>(ILcom/google/firestore/v1/BloomFilter;)V

    .line 1001
    .local v1, "filter":Lcom/google/firebase/firestore/remote/ExistenceFilter;
    invoke-virtual {v0}, Lcom/google/firestore/v1/ExistenceFilter;->getTargetId()I

    move-result v2

    .line 1002
    .local v2, "targetId":I
    new-instance v3, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;

    invoke-direct {v3, v2, v1}, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;-><init>(ILcom/google/firebase/firestore/remote/ExistenceFilter;)V

    .line 1003
    .local v3, "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    goto/16 :goto_1

    .line 992
    .end local v0    # "protoFilter":Lcom/google/firestore/v1/ExistenceFilter;
    .end local v1    # "filter":Lcom/google/firebase/firestore/remote/ExistenceFilter;
    .end local v2    # "targetId":I
    .end local v3    # "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    .line 993
    .local v0, "docRemove":Lcom/google/firestore/v1/DocumentRemove;
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v1

    .line 994
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getDocument()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 995
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    new-instance v3, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v2, v5}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 996
    .restart local v3    # "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    goto/16 :goto_1

    .line 982
    .end local v0    # "docRemove":Lcom/google/firestore/v1/DocumentRemove;
    .end local v1    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v3    # "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    .line 983
    .local v0, "docDelete":Lcom/google/firestore/v1/DocumentDelete;
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v1

    .line 984
    .restart local v1    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getDocument()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 986
    .restart local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    .line 987
    .local v3, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/MutableDocument;->newNoDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v4

    .line 988
    .local v4, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    new-instance v5, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    .line 989
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    invoke-direct {v5, v6, v1, v7, v4}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 990
    .local v5, "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    move-object v3, v5

    goto/16 :goto_1

    .line 970
    .end local v0    # "docDelete":Lcom/google/firestore/v1/DocumentDelete;
    .end local v1    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v3    # "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    .end local v4    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v5    # "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getDocumentChange()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    .line 971
    .local v0, "docChange":Lcom/google/firestore/v1/DocumentChange;
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getTargetIdsList()Ljava/util/List;

    move-result-object v1

    .line 972
    .local v1, "added":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v2

    .line 973
    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeKey(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    .line 974
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firestore/v1/Document;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v4

    .line 975
    .local v4, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    sget-object v5, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 976
    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 975
    const-string v7, "Got a document change without an update time"

    invoke-static {v5, v7, v6}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 977
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/firestore/model/ObjectValue;->fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v5

    .line 978
    .local v5, "data":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/model/MutableDocument;->newFoundDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v6

    .line 979
    .local v6, "document":Lcom/google/firebase/firestore/model/MutableDocument;
    new-instance v7, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v8

    invoke-direct {v7, v1, v2, v8, v6}, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 980
    .local v7, "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    move-object v3, v7

    goto :goto_1

    .line 941
    .end local v0    # "docChange":Lcom/google/firestore/v1/DocumentChange;
    .end local v1    # "added":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v4    # "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    .end local v5    # "data":Lcom/google/firebase/firestore/model/ObjectValue;
    .end local v6    # "document":Lcom/google/firebase/firestore/model/MutableDocument;
    .end local v7    # "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/firestore/v1/ListenResponse;->getTargetChange()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    .line 943
    .local v0, "targetChange":Lcom/google/firestore/v1/TargetChange;
    const/4 v1, 0x0

    .line 944
    .local v1, "cause":Lio/grpc/Status;
    sget-object v2, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/TargetChange$TargetChangeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 963
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown target change type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 959
    :pswitch_5
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Reset:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 960
    .local v2, "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    goto :goto_0

    .line 956
    .end local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    :pswitch_6
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Current:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 957
    .restart local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    goto :goto_0

    .line 952
    .end local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    :pswitch_7
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 953
    .restart local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getCause()Lcom/google/rpc/Status;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->fromStatus(Lcom/google/rpc/Status;)Lio/grpc/Status;

    move-result-object v1

    .line 954
    goto :goto_0

    .line 949
    .end local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    :pswitch_8
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Added:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 950
    .restart local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    goto :goto_0

    .line 946
    .end local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    :pswitch_9
    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->NoChange:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 947
    .restart local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    nop

    .line 965
    :goto_0
    new-instance v3, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    .line 967
    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetIdsList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;-><init>(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;Ljava/util/List;Lcom/google/protobuf/ByteString;Lio/grpc/Status;)V

    .line 968
    .local v3, "watchChange":Lcom/google/firebase/firestore/remote/WatchChange;
    nop

    .line 1009
    .end local v0    # "targetChange":Lcom/google/firestore/v1/TargetChange;
    .end local v1    # "cause":Lio/grpc/Status;
    .end local v2    # "changeType":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    :goto_1
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method encodeCompositeFilter(Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 4
    .param p1, "compositeFilter"    # Lcom/google/firebase/firestore/core/CompositeFilter;

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 782
    .local v0, "protos":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/StructuredQuery$Filter;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 783
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFilter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 787
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 788
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v1

    .line 791
    :cond_1
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    move-result-object v1

    .line 792
    .local v1, "composite":Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeCompositeFilterOperator(Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;->setOp(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    .line 793
    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;->addAllFilters(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    .line 794
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->setCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v2
.end method

.method encodeCompositeFilterOperator(Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
    .locals 2
    .param p1, "op"    # Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 756
    sget-object v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$1;->$SwitchMap$com$google$firebase$firestore$core$CompositeFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 762
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unrecognized composite filter type."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 760
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->OR:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    return-object v0

    .line 758
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->AND:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public encodeDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firestore/v1/Document;
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "value"    # Lcom/google/firebase/firestore/model/ObjectValue;

    .line 225
    invoke-static {}, Lcom/google/firestore/v1/Document;->newBuilder()Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    .line 226
    .local v0, "builder":Lcom/google/firestore/v1/Document$Builder;
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Document$Builder;->setName(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;

    .line 227
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/ObjectValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Document$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/Document$Builder;

    .line 228
    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    return-object v1
.end method

.method public encodeDocumentsTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 2
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 516
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->newBuilder()Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    move-result-object v0

    .line 517
    .local v0, "builder":Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeQueryPath(Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->addDocuments(Ljava/lang/String;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    .line 518
    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v1
.end method

.method encodeFilter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 2
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 718
    instance-of v0, p1, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v0, :cond_0

    .line 719
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeUnaryOrFieldFilter(Lcom/google/firebase/firestore/core/FieldFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    return-object v0

    .line 720
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/core/CompositeFilter;

    if-eqz v0, :cond_1

    .line 721
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeCompositeFilter(Lcom/google/firebase/firestore/core/CompositeFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    return-object v0

    .line 723
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unrecognized filter type %s"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 133
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeResourceName(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeListenRequestLabels(Lcom/google/firebase/firestore/local/TargetData;)Ljava/util/Map;
    .locals 3
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getPurpose()Lcom/google/firebase/firestore/local/QueryPurpose;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeLabel(Lcom/google/firebase/firestore/local/QueryPurpose;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 461
    const/4 v1, 0x0

    return-object v1

    .line 464
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 465
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "goog-listen-tags"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-object v1
.end method

.method public encodeMutation(Lcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firestore/v1/Write;
    .locals 4
    .param p1, "mutation"    # Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 269
    invoke-static {}, Lcom/google/firestore/v1/Write;->newBuilder()Lcom/google/firestore/v1/Write$Builder;

    move-result-object v0

    .line 270
    .local v0, "builder":Lcom/google/firestore/v1/Write$Builder;
    instance-of v1, p1, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/SetMutation;->getValue()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firestore/v1/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Write$Builder;->setUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;

    goto :goto_0

    .line 272
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->getValue()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firestore/v1/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Write$Builder;->setUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;

    .line 274
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeDocumentMask(Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Write$Builder;->setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/Write$Builder;

    goto :goto_0

    .line 275
    :cond_1
    instance-of v1, p1, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Write$Builder;->setDelete(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;

    goto :goto_0

    .line 277
    :cond_2
    instance-of v1, p1, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;

    if-eqz v1, :cond_5

    .line 278
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Write$Builder;->setVerify(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;

    .line 283
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getFieldTransforms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 284
    .local v2, "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFieldTransform(Lcom/google/firebase/firestore/model/mutation/FieldTransform;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/Write$Builder;->addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;

    .line 285
    .end local v2    # "fieldTransform":Lcom/google/firebase/firestore/model/mutation/FieldTransform;
    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isNone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 288
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodePrecondition(Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firestore/v1/Precondition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Write$Builder;->setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Write$Builder;

    .line 290
    :cond_4
    invoke-virtual {v0}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    return-object v1

    .line 280
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "unknown mutation type %s"

    invoke-static {v2, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1
.end method

.method public encodeQueryTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 7
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 531
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->newBuilder()Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    move-result-object v0

    .line 532
    .local v0, "builder":Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$Builder;

    move-result-object v1

    .line 533
    .local v1, "structuredQueryBuilder":Lcom/google/firestore/v1/StructuredQuery$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .line 534
    .local v2, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 535
    nop

    .line 536
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    .line 535
    const-string v6, "Collection Group queries should be within a document path or root."

    invoke-static {v3, v6, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeQueryPath(Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->setParent(Ljava/lang/String;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    .line 539
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    move-result-object v3

    .line 540
    .local v3, "from":Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->setCollectionId(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    .line 541
    invoke-virtual {v3, v4}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->setAllDescendants(Z)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    .line 542
    invoke-virtual {v1, v3}, Lcom/google/firestore/v1/StructuredQuery$Builder;->addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 543
    .end local v3    # "from":Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    goto :goto_2

    .line 544
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    const-string v6, "Document queries with filters are not supported."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 545
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeQueryPath(Lcom/google/firebase/firestore/model/ResourcePath;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->setParent(Ljava/lang/String;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    .line 546
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    move-result-object v3

    .line 547
    .restart local v3    # "from":Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->setCollectionId(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    .line 548
    invoke-virtual {v1, v3}, Lcom/google/firestore/v1/StructuredQuery$Builder;->addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 552
    .end local v3    # "from":Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;
    :goto_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 553
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFilters(Ljava/util/List;)Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firestore/v1/StructuredQuery$Builder;->setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 557
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getOrderBy()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/core/OrderBy;

    .line 558
    .local v5, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeOrderBy(Lcom/google/firebase/firestore/core/OrderBy;)Lcom/google/firestore/v1/StructuredQuery$Order;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/firestore/v1/StructuredQuery$Builder;->addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 559
    .end local v5    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_3

    .line 562
    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->hasLimit()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 563
    invoke-static {}, Lcom/google/protobuf/Int32Value;->newBuilder()Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getLimit()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v3, v5}, Lcom/google/protobuf/Int32Value$Builder;->setValue(I)Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firestore/v1/StructuredQuery$Builder;->setLimit(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 566
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 567
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->newBuilder()Lcom/google/firestore/v1/Cursor$Builder;

    move-result-object v3

    .line 568
    .local v3, "cursor":Lcom/google/firestore/v1/Cursor$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firestore/v1/Cursor$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Cursor$Builder;

    .line 569
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/firestore/v1/Cursor$Builder;->setBefore(Z)Lcom/google/firestore/v1/Cursor$Builder;

    .line 570
    invoke-virtual {v1, v3}, Lcom/google/firestore/v1/StructuredQuery$Builder;->setStartAt(Lcom/google/firestore/v1/Cursor$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 573
    .end local v3    # "cursor":Lcom/google/firestore/v1/Cursor$Builder;
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 574
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->newBuilder()Lcom/google/firestore/v1/Cursor$Builder;

    move-result-object v3

    .line 575
    .restart local v3    # "cursor":Lcom/google/firestore/v1/Cursor$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firestore/v1/Cursor$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Cursor$Builder;

    .line 576
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/google/firestore/v1/Cursor$Builder;->setBefore(Z)Lcom/google/firestore/v1/Cursor$Builder;

    .line 577
    invoke-virtual {v1, v3}, Lcom/google/firestore/v1/StructuredQuery$Builder;->setEndAt(Lcom/google/firestore/v1/Cursor$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 580
    .end local v3    # "cursor":Lcom/google/firestore/v1/Cursor$Builder;
    :cond_7
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery$Builder;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    .line 581
    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v3
.end method

.method encodeStructuredAggregationQuery(Lcom/google/firestore/v1/Target$QueryTarget;Ljava/util/List;Ljava/util/HashMap;)Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 10
    .param p1, "encodedQueryTarget"    # Lcom/google/firestore/v1/Target$QueryTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/Target$QueryTarget;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/AggregateField;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredAggregationQuery;"
        }
    .end annotation

    .line 648
    .local p2, "aggregateFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/AggregateField;>;"
    .local p3, "aliasMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    move-result-object v0

    .line 649
    .local v0, "structuredAggregationQuery":Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$QueryTarget;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    .line 651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v1, "aggregations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 654
    .local v2, "uniqueFields":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 655
    .local v3, "aliasID":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/AggregateField;

    .line 657
    .local v5, "aggregateField":Lcom/google/firebase/firestore/AggregateField;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/AggregateField;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 658
    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v5}, Lcom/google/firebase/firestore/AggregateField;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aggregate_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "aliasID":I
    .local v7, "aliasID":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "serverAlias":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/AggregateField;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    move-result-object v6

    .line 668
    .local v6, "aggregation":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v8

    .line 669
    invoke-virtual {v5}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v8

    .line 670
    invoke-virtual {v8}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 672
    .local v8, "fieldPath":Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    instance-of v9, v5, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    if-eqz v9, :cond_1

    .line 673
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    goto :goto_1

    .line 674
    :cond_1
    instance-of v9, v5, Lcom/google/firebase/firestore/AggregateField$SumAggregateField;

    if-eqz v9, :cond_2

    .line 675
    nop

    .line 676
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 675
    invoke-virtual {v6, v9}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    goto :goto_1

    .line 677
    :cond_2
    instance-of v9, v5, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;

    if-eqz v9, :cond_3

    .line 678
    nop

    .line 679
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 678
    invoke-virtual {v6, v9}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    .line 684
    :goto_1
    invoke-virtual {v6, v3}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->setAlias(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    .line 685
    invoke-virtual {v6}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    .end local v3    # "serverAlias":Ljava/lang/String;
    .end local v5    # "aggregateField":Lcom/google/firebase/firestore/AggregateField;
    .end local v6    # "aggregation":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .end local v8    # "fieldPath":Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    move v3, v7

    goto/16 :goto_0

    .line 681
    .restart local v3    # "serverAlias":Ljava/lang/String;
    .restart local v5    # "aggregateField":Lcom/google/firebase/firestore/AggregateField;
    .restart local v6    # "aggregation":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .restart local v8    # "fieldPath":Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Unsupported aggregation"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 687
    .end local v5    # "aggregateField":Lcom/google/firebase/firestore/AggregateField;
    .end local v6    # "aggregation":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .end local v7    # "aliasID":I
    .end local v8    # "fieldPath":Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .local v3, "aliasID":I
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->addAllAggregations(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    .line 688
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/StructuredAggregationQuery;

    return-object v4
.end method

.method public encodeTarget(Lcom/google/firebase/firestore/local/TargetData;)Lcom/google/firestore/v1/Target;
    .locals 4
    .param p1, "targetData"    # Lcom/google/firebase/firestore/local/TargetData;

    .line 486
    invoke-static {}, Lcom/google/firestore/v1/Target;->newBuilder()Lcom/google/firestore/v1/Target$Builder;

    move-result-object v0

    .line 487
    .local v0, "builder":Lcom/google/firestore/v1/Target$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    .line 489
    .local v1, "target":Lcom/google/firebase/firestore/core/Target;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->isDocumentQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeDocumentsTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Target$Builder;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$Builder;

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeQueryTarget(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Target$Builder;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$Builder;

    .line 495
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Target$Builder;->setTargetId(I)Lcom/google/firestore/v1/Target$Builder;

    .line 497
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v2

    if-lez v2, :cond_1

    .line 501
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Target$Builder;->setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Target$Builder;

    goto :goto_1

    .line 503
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Target$Builder;->setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$Builder;

    .line 506
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getExpectedCount()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 507
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->compareTo(Lcom/google/firebase/firestore/model/SnapshotVersion;)I

    move-result v2

    if-lez v2, :cond_3

    .line 509
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Int32Value;->newBuilder()Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getExpectedCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/Int32Value$Builder;->setValue(I)Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/Target$Builder;->setExpectedCount(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/firestore/v1/Target$Builder;

    .line 512
    :cond_3
    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Target;

    return-object v2
.end method

.method public encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 3
    .param p1, "timestamp"    # Lcom/google/firebase/Timestamp;

    .line 104
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 105
    .local v0, "builder":Lcom/google/protobuf/Timestamp$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    .line 106
    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Timestamp$Builder;->setNanos(I)Lcom/google/protobuf/Timestamp$Builder;

    .line 107
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    return-object v1
.end method

.method encodeUnaryOrFieldFilter(Lcom/google/firebase/firestore/core/FieldFilter;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 3
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/FieldFilter;

    .line 729
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v0, v1, :cond_0

    .line 730
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v0, v1, :cond_4

    .line 731
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    move-result-object v0

    .line 732
    .local v0, "unaryProto":Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFieldPath(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    .line 733
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->isNanValue(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    nop

    .line 735
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v2, :cond_1

    .line 736
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    goto :goto_0

    .line 737
    :cond_1
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 734
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    .line 738
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v1

    .line 739
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->isNullValue(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 740
    nop

    .line 741
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v2, :cond_3

    .line 742
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    goto :goto_1

    .line 743
    :cond_3
    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 740
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    .line 744
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v1

    .line 747
    .end local v0    # "unaryProto":Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    :cond_4
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    move-result-object v0

    .line 748
    .local v0, "proto":Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFieldPath(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    .line 749
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeFieldFilterOperator(Lcom/google/firebase/firestore/core/FieldFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->setOp(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    .line 750
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->setValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    .line 751
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newBuilder()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->setFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v1
.end method

.method public encodeVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/protobuf/Timestamp;
    .locals 1
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 115
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->getTimestamp()Lcom/google/firebase/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->encodeTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public isLocalResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Z
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 213
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->isValidResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0
.end method
