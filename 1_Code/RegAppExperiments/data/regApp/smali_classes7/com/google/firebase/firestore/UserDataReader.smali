.class public final Lcom/google/firebase/firestore/UserDataReader;
.super Ljava/lang/Object;
.source "UserDataReader.java"


# instance fields
.field private final databaseId:Lcom/google/firebase/firestore/model/DatabaseId;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DatabaseId;)V
    .locals 0
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/firebase/firestore/UserDataReader;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 66
    return-void
.end method

.method private convertAndParseDocumentData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 6
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;

    .line 222
    const-string v0, "Invalid data. Data must be a Map<String, Object> or a suitable POJO object, but it was "

    .line 227
    .local v0, "badDocReason":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "converted":Ljava/lang/Object;
    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    .line 233
    .local v2, "parsedValue":Lcom/google/firestore/v1/Value;
    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v3

    sget-object v4, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v3, v4, :cond_0

    .line 236
    new-instance v3, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v3, v2}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v3

    .line 234
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v1    # "converted":Ljava/lang/Object;
    .end local v2    # "parsedValue":Lcom/google/firestore/v1/Value;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "an array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseArrayTransformElements(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 465
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->Argument:Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;-><init>(Lcom/google/firebase/firestore/core/UserData$Source;)V

    .line 467
    .local v0, "accumulator":Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 468
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 469
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 473
    .local v3, "element":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v4

    .line 474
    .local v4, "context":Lcom/google/firebase/firestore/core/UserData$ParseContext;
    invoke-virtual {v4, v2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->childContext(I)Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/google/firebase/firestore/UserDataReader;->convertAndParseFieldData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "context":Lcom/google/firebase/firestore/core/UserData$ParseContext;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private parseData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;

    .line 250
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseMap(Ljava/util/Map;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/FieldValue;

    if-eqz v0, :cond_1

    .line 258
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/FieldValue;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseSentinelFieldValue(Lcom/google/firebase/firestore/FieldValue;Lcom/google/firebase/firestore/core/UserData$ParseContext;)V

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 268
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 273
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->isArrayElement()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getDataSource()Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->ArrayArgument:Lcom/google/firebase/firestore/core/UserData$Source;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 274
    :cond_3
    const-string v0, "Nested arrays are not supported"

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 276
    :cond_4
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseList(Ljava/util/List;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 278
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseScalarValue(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method private parseList(Ljava/util/List;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;
    .locals 7
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/firebase/firestore/core/UserData$ParseContext;",
            ")",
            "Lcom/google/firestore/v1/Value;"
        }
    .end annotation

    .line 307
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    .line 308
    .local v0, "arrayBuilder":Lcom/google/firestore/v1/ArrayValue$Builder;
    const/4 v1, 0x0

    .line 309
    .local v1, "entryIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 310
    .local v3, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->childContext(I)Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/firestore/UserDataReader;->parseData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 311
    .local v4, "parsedEntry":Lcom/google/firestore/v1/Value;
    if-nez v4, :cond_0

    .line 313
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    invoke-virtual {v5, v6}, Lcom/google/firestore/v1/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 315
    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/ArrayValue$Builder;->addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 316
    nop

    .end local v3    # "entry":Ljava/lang/Object;, "TT;"
    .end local v4    # "parsedEntry":Lcom/google/firestore/v1/Value;
    add-int/lit8 v1, v1, 0x1

    .line 317
    goto :goto_0

    .line 318
    :cond_1
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2
.end method

.method private parseMap(Ljava/util/Map;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;
    .locals 6
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/firebase/firestore/core/UserData$ParseContext;",
            ")",
            "Lcom/google/firestore/v1/Value;"
        }
    .end annotation

    .line 284
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 288
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 290
    :cond_1
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    .line 291
    .local v0, "mapBuilder":Lcom/google/firestore/v1/MapValue$Builder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 292
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 296
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->childContext(Ljava/lang/String;)Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/firebase/firestore/UserDataReader;->parseData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 298
    .local v4, "parsedValue":Lcom/google/firestore/v1/Value;
    if-eqz v4, :cond_2

    .line 299
    invoke-virtual {v0, v3, v4}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    .line 301
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "parsedValue":Lcom/google/firestore/v1/Value;
    :cond_2
    goto :goto_0

    .line 293
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    nop

    .line 294
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Non-String Map key (%s) is not allowed"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {p2, v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 302
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    return-object v1
.end method

.method private parseScalarValue(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;
    .locals 6
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;

    .line 390
    if-nez p1, :cond_0

    .line 391
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 392
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 393
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 394
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 395
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 396
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 397
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 398
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 399
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 400
    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 401
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 402
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 403
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 404
    :cond_6
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 405
    new-instance v0, Lcom/google/firebase/Timestamp;

    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lcom/google/firebase/Timestamp;-><init>(Ljava/util/Date;)V

    .line 406
    .local v0, "timestamp":Lcom/google/firebase/Timestamp;
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataReader;->parseTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    return-object v1

    .line 407
    .end local v0    # "timestamp":Lcom/google/firebase/Timestamp;
    :cond_7
    instance-of v0, p1, Lcom/google/firebase/Timestamp;

    if-eqz v0, :cond_8

    .line 408
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/Timestamp;

    .line 409
    .restart local v0    # "timestamp":Lcom/google/firebase/Timestamp;
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataReader;->parseTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    return-object v1

    .line 410
    .end local v0    # "timestamp":Lcom/google/firebase/Timestamp;
    :cond_8
    instance-of v0, p1, Lcom/google/firebase/firestore/GeoPoint;

    if-eqz v0, :cond_9

    .line 411
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/GeoPoint;

    .line 412
    .local v0, "geoPoint":Lcom/google/firebase/firestore/GeoPoint;
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 414
    invoke-static {}, Lcom/google/type/LatLng;->newBuilder()Lcom/google/type/LatLng$Builder;

    move-result-object v2

    .line 415
    invoke-virtual {v0}, Lcom/google/firebase/firestore/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/type/LatLng$Builder;->setLatitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v2

    .line 416
    invoke-virtual {v0}, Lcom/google/firebase/firestore/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/type/LatLng$Builder;->setLongitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setGeoPointValue(Lcom/google/type/LatLng$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 417
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 412
    return-object v1

    .line 418
    .end local v0    # "geoPoint":Lcom/google/firebase/firestore/GeoPoint;
    :cond_9
    instance-of v0, p1, Lcom/google/firebase/firestore/Blob;

    if-eqz v0, :cond_a

    .line 419
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/Blob;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/Blob;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 420
    :cond_a
    instance-of v0, p1, Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v0, :cond_d

    .line 421
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/DocumentReference;

    .line 423
    .local v0, "ref":Lcom/google/firebase/firestore/DocumentReference;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 424
    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    .line 425
    .local v1, "otherDb":Lcom/google/firebase/firestore/model/DatabaseId;
    iget-object v2, p0, Lcom/google/firebase/firestore/UserDataReader;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_0

    .line 426
    :cond_b
    nop

    .line 429
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/firestore/UserDataReader;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 431
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/firestore/UserDataReader;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 432
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 427
    const-string v3, "Document reference is for database %s/%s but should be for database %s/%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {p2, v2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 435
    .end local v1    # "otherDb":Lcom/google/firebase/firestore/model/DatabaseId;
    :cond_c
    :goto_0
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/UserDataReader;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 439
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/UserDataReader;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 440
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/google/firebase/firestore/DocumentReference;

    .line 441
    invoke-virtual {v4}, Lcom/google/firebase/firestore/DocumentReference;->getPath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 437
    const-string v3, "projects/%s/databases/%s/documents/%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 435
    return-object v1

    .line 443
    .end local v0    # "ref":Lcom/google/firebase/firestore/DocumentReference;
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 444
    const-string v0, "Arrays are not supported; use a List instead"

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 446
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseSentinelFieldValue(Lcom/google/firebase/firestore/FieldValue;Lcom/google/firebase/firestore/core/UserData$ParseContext;)V
    .locals 4
    .param p1, "value"    # Lcom/google/firebase/firestore/FieldValue;
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;

    .line 327
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->isWrite()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 331
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 336
    instance-of v0, p1, Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;

    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getDataSource()Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->MergeSet:Lcom/google/firebase/firestore/core/UserData$Source;

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    goto/16 :goto_1

    .line 341
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getDataSource()Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->Update:Lcom/google/firebase/firestore/core/UserData$Source;

    if-ne v0, v1, :cond_2

    .line 342
    nop

    .line 343
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 342
    const-string v2, "FieldValue.delete() at the top level should have already been handled."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    const-string v0, "FieldValue.delete() can only appear at the top level of your update data"

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 349
    :cond_2
    const-string v0, "FieldValue.delete() can only be used with update() and set() with SetOptions.merge()"

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 353
    :cond_3
    instance-of v0, p1, Lcom/google/firebase/firestore/FieldValue$ServerTimestampFieldValue;

    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->getInstance()Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    goto :goto_1

    .line 356
    :cond_4
    instance-of v0, p1, Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;

    if-eqz v0, :cond_5

    .line 357
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;

    .line 358
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataReader;->parseArrayTransformElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 359
    .local v0, "parsedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    new-instance v1, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;-><init>(Ljava/util/List;)V

    .line 360
    .local v1, "arrayUnion":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 362
    .end local v0    # "parsedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    .end local v1    # "arrayUnion":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;

    if-eqz v0, :cond_6

    .line 363
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;

    .line 364
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataReader;->parseArrayTransformElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 365
    .restart local v0    # "parsedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    new-instance v1, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Remove;-><init>(Ljava/util/List;)V

    .line 366
    .local v1, "arrayRemove":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 368
    .end local v0    # "parsedElements":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    .end local v1    # "arrayRemove":Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;

    if-eqz v0, :cond_7

    .line 371
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;

    .line 373
    .local v0, "numericIncrementFieldValue":Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;->getOperand()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseQueryValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 374
    .local v1, "operand":Lcom/google/firestore/v1/Value;
    new-instance v2, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;

    invoke-direct {v2, v1}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;-><init>(Lcom/google/firestore/v1/Value;)V

    .line 376
    .local v2, "incrementOperation":Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->getPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldTransforms(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/mutation/TransformOperation;)V

    .line 378
    .end local v0    # "numericIncrementFieldValue":Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;
    .end local v1    # "operand":Lcom/google/firestore/v1/Value;
    .end local v2    # "incrementOperation":Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;
    nop

    .line 381
    :goto_1
    return-void

    .line 379
    :cond_7
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unknown FieldValue type: %s"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 332
    :cond_8
    nop

    .line 333
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldValue;->getMethodName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s() is not currently supported inside arrays"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 328
    :cond_9
    nop

    .line 329
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldValue;->getMethodName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s() can only be used with set() and update()"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->createError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseTimestamp(Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
    .locals 5
    .param p1, "timestamp"    # Lcom/google/firebase/Timestamp;

    .line 454
    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    .line 456
    .local v0, "truncatedNanoseconds":I
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 458
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v2

    .line 459
    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v2

    .line 460
    invoke-virtual {v2, v0}, Lcom/google/protobuf/Timestamp$Builder;->setNanos(I)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v2

    .line 457
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setTimestampValue(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 456
    return-object v1
.end method


# virtual methods
.method public convertAndParseFieldData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/google/firebase/firestore/core/UserData$ParseContext;

    .line 212
    invoke-static {p1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertToPlainJavaTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, "converted":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    return-object v1
.end method

.method public parseMergeData(Ljava/lang/Object;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;
    .locals 6
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "fieldMask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 86
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->MergeSet:Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;-><init>(Lcom/google/firebase/firestore/core/UserData$Source;)V

    .line 87
    .local v0, "accumulator":Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/UserDataReader;->convertAndParseDocumentData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v1

    .line 89
    .local v1, "updateData":Lcom/google/firebase/firestore/model/ObjectValue;
    if-eqz p2, :cond_2

    .line 91
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldPath;

    .line 92
    .local v3, "field":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->contains(Lcom/google/firebase/firestore/model/FieldPath;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    .end local v3    # "field":Lcom/google/firebase/firestore/model/FieldPath;
    goto :goto_0

    .line 93
    .restart local v3    # "field":Lcom/google/firebase/firestore/model/FieldPath;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldPath;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is specified in your field mask but not in your input data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v3    # "field":Lcom/google/firebase/firestore/model/FieldPath;
    :cond_1
    invoke-virtual {v0, v1, p2}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->toMergeData(Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v2

    return-object v2

    .line 102
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->toMergeData(Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v2

    return-object v2
.end method

.method public parseQueryValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "input"    # Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/UserDataReader;->parseQueryValue(Ljava/lang/Object;Z)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public parseQueryValue(Ljava/lang/Object;Z)Lcom/google/firestore/v1/Value;
    .locals 6
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "allowArrays"    # Z

    .line 198
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    .line 200
    if-eqz p2, :cond_0

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->ArrayArgument:Lcom/google/firebase/firestore/core/UserData$Source;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->Argument:Lcom/google/firebase/firestore/core/UserData$Source;

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;-><init>(Lcom/google/firebase/firestore/core/UserData$Source;)V

    .line 202
    .local v0, "accumulator":Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/firestore/UserDataReader;->convertAndParseFieldData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    .line 203
    .local v1, "parsed":Lcom/google/firestore/v1/Value;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const-string v4, "Parsed data should not be null."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    nop

    .line 205
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->getFieldTransforms()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 204
    const-string v4, "Field transforms should have been disallowed."

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-object v1
.end method

.method public parseSetData(Ljava/lang/Object;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->Set:Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;-><init>(Lcom/google/firebase/firestore/core/UserData$Source;)V

    .line 75
    .local v0, "accumulator":Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/UserDataReader;->convertAndParseDocumentData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v1

    .line 76
    .local v1, "updateData":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->toSetData(Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v2

    return-object v2
.end method

.method public parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;"
        }
    .end annotation

    .line 143
    .local p1, "fieldsAndValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 143
    const-string v4, "Expected fieldAndValues to contain an even number of elements"

    invoke-static {v0, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    sget-object v3, Lcom/google/firebase/firestore/core/UserData$Source;->Update:Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-direct {v0, v3}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;-><init>(Lcom/google/firebase/firestore/core/UserData$Source;)V

    .line 148
    .local v0, "accumulator":Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v3

    .line 149
    .local v3, "context":Lcom/google/firebase/firestore/core/UserData$ParseContext;
    new-instance v4, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v4}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    .line 151
    .local v4, "updateData":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 152
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 154
    .local v6, "fieldPath":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 156
    .local v7, "fieldValue":Ljava/lang/Object;
    instance-of v8, v6, Ljava/lang/String;

    if-nez v8, :cond_2

    instance-of v8, v6, Lcom/google/firebase/firestore/FieldPath;

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    move v8, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v8, v1

    :goto_3
    const-string v9, "Expected argument to be String or FieldPath."

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 164
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 165
    invoke-static {v8}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v8

    .line 166
    invoke-virtual {v8}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v8

    .local v8, "parsedField":Lcom/google/firebase/firestore/model/FieldPath;
    goto :goto_4

    .line 168
    .end local v8    # "parsedField":Lcom/google/firebase/firestore/model/FieldPath;
    :cond_3
    move-object v8, v6

    check-cast v8, Lcom/google/firebase/firestore/FieldPath;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v8

    .line 171
    .restart local v8    # "parsedField":Lcom/google/firebase/firestore/model/FieldPath;
    :goto_4
    instance-of v9, v7, Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;

    if-eqz v9, :cond_4

    .line 173
    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    goto :goto_5

    .line 175
    :cond_4
    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->childContext(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/google/firebase/firestore/UserDataReader;->convertAndParseFieldData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v9

    .line 176
    .local v9, "parsedValue":Lcom/google/firestore/v1/Value;
    if-eqz v9, :cond_5

    .line 177
    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 178
    invoke-virtual {v4, v8, v9}, Lcom/google/firebase/firestore/model/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 181
    .end local v6    # "fieldPath":Ljava/lang/Object;
    .end local v7    # "fieldValue":Ljava/lang/Object;
    .end local v8    # "parsedField":Lcom/google/firebase/firestore/model/FieldPath;
    .end local v9    # "parsedValue":Lcom/google/firestore/v1/Value;
    :cond_5
    :goto_5
    goto :goto_1

    .line 183
    :cond_6
    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->toUpdateData(Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v1

    return-object v1
.end method

.method public parseUpdateData(Ljava/util/Map;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;"
        }
    .end annotation

    .line 108
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "Provided update data must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;

    sget-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->Update:Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;-><init>(Lcom/google/firebase/firestore/core/UserData$Source;)V

    .line 111
    .local v0, "accumulator":Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->rootContext()Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v1

    .line 112
    .local v1, "context":Lcom/google/firebase/firestore/core/UserData$ParseContext;
    new-instance v2, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {v2}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>()V

    .line 114
    .local v2, "updateData":Lcom/google/firebase/firestore/model/ObjectValue;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 115
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    .line 118
    .local v5, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 120
    .local v6, "fieldValue":Ljava/lang/Object;
    instance-of v7, v6, Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;

    if-eqz v7, :cond_0

    .line 122
    invoke-virtual {v1, v5}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {v1, v5}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->childContext(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/UserData$ParseContext;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/firebase/firestore/UserDataReader;->convertAndParseFieldData(Ljava/lang/Object;Lcom/google/firebase/firestore/core/UserData$ParseContext;)Lcom/google/firestore/v1/Value;

    move-result-object v7

    .line 126
    .local v7, "parsedValue":Lcom/google/firestore/v1/Value;
    if-eqz v7, :cond_1

    .line 127
    invoke-virtual {v1, v5}, Lcom/google/firebase/firestore/core/UserData$ParseContext;->addToFieldMask(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 128
    invoke-virtual {v2, v5, v7}, Lcom/google/firebase/firestore/model/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 131
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    .end local v6    # "fieldValue":Ljava/lang/Object;
    .end local v7    # "parsedValue":Lcom/google/firestore/v1/Value;
    :cond_1
    :goto_1
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/UserData$ParseAccumulator;->toUpdateData(Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v3

    return-object v3
.end method
