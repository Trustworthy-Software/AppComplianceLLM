.class public Lcom/google/firebase/firestore/model/Values;
.super Ljava/lang/Object;
.source "Values.java"


# static fields
.field public static final MAX_VALUE:Lcom/google/firestore/v1/Value;

.field private static final MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

.field public static final MIN_VALUE:Lcom/google/firestore/v1/Value;

.field public static final NAN_VALUE:Lcom/google/firestore/v1/Value;

.field public static final NULL_VALUE:Lcom/google/firestore/v1/Value;

.field public static final TYPE_ORDER_ARRAY:I = 0x9

.field public static final TYPE_ORDER_BLOB:I = 0x6

.field public static final TYPE_ORDER_BOOLEAN:I = 0x1

.field public static final TYPE_ORDER_GEOPOINT:I = 0x8

.field public static final TYPE_ORDER_MAP:I = 0xa

.field public static final TYPE_ORDER_MAX_VALUE:I = 0x7fffffff

.field public static final TYPE_ORDER_NULL:I = 0x0

.field public static final TYPE_ORDER_NUMBER:I = 0x2

.field public static final TYPE_ORDER_REFERENCE:I = 0x7

.field public static final TYPE_ORDER_SERVER_TIMESTAMP:I = 0x4

.field public static final TYPE_ORDER_STRING:I = 0x5

.field public static final TYPE_ORDER_TIMESTAMP:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->NAN_VALUE:Lcom/google/firestore/v1/Value;

    .line 42
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    .line 43
    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_VALUE:Lcom/google/firestore/v1/Value;

    .line 44
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-string v1, "__max__"

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    .line 46
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    const-string v3, "__type__"

    invoke-virtual {v2, v3, v0}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    sput-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 6
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;

    .line 150
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    .line 151
    .local v0, "leftArray":Lcom/google/firestore/v1/ArrayValue;
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    .line 153
    .local v1, "rightArray":Lcom/google/firestore/v1/ArrayValue;
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 154
    return v4

    .line 157
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 158
    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    return v4

    .line 157
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static canonifyArray(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arrayValue"    # Lcom/google/firestore/v1/ArrayValue;

    .line 428
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 430
    invoke-virtual {p1, v0}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 431
    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    return-void
.end method

.method private static canonifyGeoPoint(Ljava/lang/StringBuilder;Lcom/google/type/LatLng;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "latLng"    # Lcom/google/type/LatLng;

    .line 398
    invoke-virtual {p1}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "geo(%s,%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    return-void
.end method

.method private static canonifyObject(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/MapValue;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "mapValue"    # Lcom/google/firestore/v1/MapValue;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const/4 v1, 0x1

    .line 415
    .local v1, "first":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 416
    .local v3, "key":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 417
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 419
    :cond_0
    const/4 v1, 0x0

    .line 421
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p1, v3}, Lcom/google/firestore/v1/MapValue;->getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/firebase/firestore/model/Values;->canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 423
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 424
    :cond_1
    const-string v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    return-void
.end method

.method private static canonifyReference(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 402
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isReferenceValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Value should be a ReferenceValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    return-void
.end method

.method private static canonifyTimestamp(Ljava/lang/StringBuilder;Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "timestamp"    # Lcom/google/protobuf/Timestamp;

    .line 394
    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "time(%s,%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    return-void
.end method

.method private static canonifyValue(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 354
    sget-object v0, Lcom/google/firebase/firestore/model/Values$1;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 386
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyObject(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/MapValue;)V

    .line 387
    goto :goto_0

    .line 383
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyArray(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/ArrayValue;)V

    .line 384
    goto :goto_0

    .line 380
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyGeoPoint(Ljava/lang/StringBuilder;Lcom/google/type/LatLng;)V

    .line 381
    goto :goto_0

    .line 377
    :pswitch_3
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/model/Values;->canonifyReference(Ljava/lang/StringBuilder;Lcom/google/firestore/v1/Value;)V

    .line 378
    goto :goto_0

    .line 374
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    goto :goto_0

    .line 371
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    goto :goto_0

    .line 368
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/model/Values;->canonifyTimestamp(Ljava/lang/StringBuilder;Lcom/google/protobuf/Timestamp;)V

    .line 369
    goto :goto_0

    .line 365
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 366
    goto :goto_0

    .line 362
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 363
    goto :goto_0

    .line 359
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 360
    goto :goto_0

    .line 356
    :pswitch_a
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    nop

    .line 391
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
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

.method public static compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I
    .locals 5
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;

    .line 195
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 196
    .local v0, "leftType":I
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v1

    .line 198
    .local v1, "rightType":I
    if-eq v0, v1, :cond_0

    .line 199
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v2

    return v2

    .line 202
    :cond_0
    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 225
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compareMaps(Lcom/google/firestore/v1/MapValue;Lcom/google/firestore/v1/MapValue;)I

    move-result v2

    return v2

    .line 223
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compareArrays(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/ArrayValue;)I

    move-result v2

    return v2

    .line 221
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compareGeoPoints(Lcom/google/type/LatLng;Lcom/google/type/LatLng;)I

    move-result v2

    return v2

    .line 219
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compareReferences(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 217
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareByteStrings(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I

    move-result v2

    return v2

    .line 215
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 213
    :sswitch_6
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compareTimestamps(Lcom/google/protobuf/Timestamp;Lcom/google/protobuf/Timestamp;)I

    move-result v2

    return v2

    .line 211
    :sswitch_7
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compareTimestamps(Lcom/google/protobuf/Timestamp;Lcom/google/protobuf/Timestamp;)I

    move-result v2

    return v2

    .line 209
    :sswitch_8
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/model/Values;->compareNumbers(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v2

    return v2

    .line 207
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareBooleans(ZZ)I

    move-result v2

    return v2

    .line 205
    :sswitch_a
    return v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0x7fffffff -> :sswitch_a
    .end sparse-switch
.end method

.method private static compareArrays(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/ArrayValue;)I
    .locals 4
    .param p0, "left"    # Lcom/google/firestore/v1/ArrayValue;
    .param p1, "right"    # Lcom/google/firestore/v1/ArrayValue;

    .line 314
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 315
    .local v0, "minLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 316
    invoke-virtual {p0, v1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/google/firestore/v1/ArrayValue;->getValues(I)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v2

    .line 317
    .local v2, "cmp":I
    if-eqz v2, :cond_0

    .line 318
    return v2

    .line 315
    .end local v2    # "cmp":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v1

    return v1
.end method

.method private static compareGeoPoints(Lcom/google/type/LatLng;Lcom/google/type/LatLng;)I
    .locals 5
    .param p0, "left"    # Lcom/google/type/LatLng;
    .param p1, "right"    # Lcom/google/type/LatLng;

    .line 306
    invoke-virtual {p0}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareDoubles(DD)I

    move-result v0

    .line 307
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/firebase/firestore/util/Util;->compareDoubles(DD)I

    move-result v1

    return v1

    .line 310
    :cond_0
    return v0
.end method

.method private static compareMaps(Lcom/google/firestore/v1/MapValue;Lcom/google/firestore/v1/MapValue;)I
    .locals 7
    .param p0, "left"    # Lcom/google/firestore/v1/MapValue;
    .param p1, "right"    # Lcom/google/firestore/v1/MapValue;

    .line 325
    new-instance v0, Ljava/util/TreeMap;

    .line 326
    invoke-virtual {p0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;>;"
    new-instance v1, Ljava/util/TreeMap;

    .line 328
    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    .local v1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 331
    .local v2, "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 332
    .local v3, "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 333
    .local v4, "keyCompare":I
    if-eqz v4, :cond_0

    .line 334
    return v4

    .line 336
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firestore/v1/Value;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/Value;

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v5

    .line 337
    .local v5, "valueCompare":I
    if-eqz v5, :cond_1

    .line 338
    return v5

    .line 340
    .end local v2    # "entry1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    .end local v3    # "entry2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    .end local v4    # "keyCompare":I
    .end local v5    # "valueCompare":I
    :cond_1
    goto :goto_0

    .line 343
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareBooleans(ZZ)I

    move-result v2

    return v2
.end method

.method private static compareNumbers(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I
    .locals 4
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;

    .line 264
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    .line 266
    .local v0, "leftDouble":D
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v2, v3, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareDoubles(DD)I

    move-result v2

    return v2

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v2, v3, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareMixed(DJ)I

    move-result v2

    return v2

    .line 268
    .end local v0    # "leftDouble":D
    :cond_1
    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    .line 273
    .local v0, "leftLong":J
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v2, v3, :cond_3

    .line 274
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareLongs(JJ)I

    move-result v2

    return v2

    .line 275
    :cond_3
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    sget-object v3, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v2, v3, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareMixed(DJ)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    return v2

    .line 271
    .end local v0    # "leftLong":J
    :cond_4
    :goto_0
    nop

    .line 280
    :cond_5
    const-string v0, "Unexpected values: %s vs %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private static compareReferences(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "leftPath"    # Ljava/lang/String;
    .param p1, "rightPath"    # Ljava/lang/String;

    .line 292
    const-string v0, "/"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "leftSegments":[Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "rightSegments":[Ljava/lang/String;
    array-length v1, v2

    array-length v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 296
    .local v1, "minLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 297
    aget-object v4, v2, v3

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 298
    .local v4, "cmp":I
    if-eqz v4, :cond_0

    .line 299
    return v4

    .line 296
    .end local v4    # "cmp":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v3    # "i":I
    :cond_1
    array-length v3, v2

    array-length v4, v0

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v3

    return v3
.end method

.method private static compareTimestamps(Lcom/google/protobuf/Timestamp;Lcom/google/protobuf/Timestamp;)I
    .locals 4
    .param p0, "left"    # Lcom/google/protobuf/Timestamp;
    .param p1, "right"    # Lcom/google/protobuf/Timestamp;

    .line 284
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/util/Util;->compareLongs(JJ)I

    move-result v0

    .line 285
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 286
    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v1

    return v1
.end method

.method public static contains(Lcom/google/firestore/v1/ArrayValueOrBuilder;Lcom/google/firestore/v1/Value;)Z
    .locals 3
    .param p0, "haystack"    # Lcom/google/firestore/v1/ArrayValueOrBuilder;
    .param p1, "needle"    # Lcom/google/firestore/v1/Value;

    .line 186
    invoke-interface {p0}, Lcom/google/firestore/v1/ArrayValueOrBuilder;->getValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 187
    .local v1, "haystackElement":Lcom/google/firestore/v1/Value;
    invoke-static {v1, p1}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v0, 0x1

    return v0

    .line 190
    .end local v1    # "haystackElement":Lcom/google/firestore/v1/Value;
    :cond_0
    goto :goto_0

    .line 191
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 4
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;

    .line 106
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v2

    .line 115
    .local v2, "leftType":I
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v3

    .line 116
    .local v3, "rightType":I
    if-eq v2, v3, :cond_2

    .line 117
    return v1

    .line 120
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/firestore/v1/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 130
    :sswitch_0
    return v0

    .line 126
    :sswitch_1
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/model/Values;->objectEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    return v0

    .line 124
    :sswitch_2
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/model/Values;->arrayEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    return v0

    .line 128
    :sswitch_3
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 122
    :sswitch_4
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/model/Values;->numberEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v0

    return v0

    .line 111
    .end local v2    # "leftType":I
    .end local v3    # "rightType":I
    :cond_3
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p0, "valueTypeCase"    # Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 487
    sget-object v0, Lcom/google/firebase/firestore/model/Values$1;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :pswitch_0
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

    .line 510
    :pswitch_1
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 506
    :pswitch_2
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 507
    invoke-static {}, Lcom/google/type/LatLng;->newBuilder()Lcom/google/type/LatLng$Builder;

    move-result-object v1

    const-wide v2, -0x3fa9800000000000L    # -90.0

    invoke-virtual {v1, v2, v3}, Lcom/google/type/LatLng$Builder;->setLatitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v1

    const-wide v2, -0x3f99800000000000L    # -180.0

    invoke-virtual {v1, v2, v3}, Lcom/google/type/LatLng$Builder;->setLongitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setGeoPointValue(Lcom/google/type/LatLng$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 506
    return-object v0

    .line 504
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/model/DatabaseId;->EMPTY:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->empty()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 502
    :pswitch_4
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 500
    :pswitch_5
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 496
    :pswitch_6
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 497
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setTimestampValue(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 496
    return-object v0

    .line 494
    :pswitch_7
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 491
    :pswitch_8
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 489
    :pswitch_9
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method public static getUpperBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "valueTypeCase"    # Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 520
    sget-object v0, Lcom/google/firebase/firestore/model/Values$1;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    return-object v0

    .line 539
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 537
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 535
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->GEO_POINT_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 533
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 531
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BYTES_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 529
    :pswitch_6
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->STRING_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 527
    :pswitch_7
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 524
    :pswitch_8
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    .line 522
    :pswitch_9
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->BOOLEAN_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method public static isArray(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 455
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->ARRAY_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDouble(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 445
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInteger(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 440
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMapValue(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 471
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMaxValue(Lcom/google/firestore/v1/Value;)Z
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 549
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE_TYPE:Lcom/google/firestore/v1/Value;

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "__type__"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNanValue(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 467
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNullValue(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 463
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->NULL_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNumber(Lcom/google/firestore/v1/Value;)Z
    .locals 1
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 450
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isInteger(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isDouble(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isReferenceValue(Lcom/google/firestore/v1/Value;)Z
    .locals 2
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 459
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->REFERENCE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static lowerBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I
    .locals 2
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "leftInclusive"    # Z
    .param p2, "right"    # Lcom/google/firestore/v1/Value;
    .param p3, "rightInclusive"    # Z

    .line 233
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 234
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 235
    return v0

    .line 238
    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 239
    const/4 v1, -0x1

    return v1

    .line 240
    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 241
    const/4 v1, 0x1

    return v1

    .line 244
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static numberEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 6
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;

    .line 137
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->DOUBLE_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v0, v1, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 143
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 142
    :goto_1
    return v2

    .line 146
    :cond_3
    return v3
.end method

.method private static objectEquals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z
    .locals 7
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "right"    # Lcom/google/firestore/v1/Value;

    .line 167
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    .line 168
    .local v0, "leftMap":Lcom/google/firestore/v1/MapValue;
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    .line 170
    .local v1, "rightMap":Lcom/google/firestore/v1/MapValue;
    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsCount()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsCount()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 171
    return v4

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 175
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {v1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firestore/v1/Value;

    .line 176
    .local v5, "otherEntry":Lcom/google/firestore/v1/Value;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firestore/v1/Value;

    invoke-static {v6, v5}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 177
    return v4

    .line 179
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    .end local v5    # "otherEntry":Lcom/google/firestore/v1/Value;
    :cond_1
    goto :goto_0

    .line 181
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p0, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 476
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 478
    const-string v2, "projects/%s/databases/%s/documents/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 482
    .local v0, "value":Lcom/google/firestore/v1/Value;
    return-object v0
.end method

.method public static typeOrder(Lcom/google/firestore/v1/Value;)I
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 71
    sget-object v0, Lcom/google/firebase/firestore/model/Values$1;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 93
    :pswitch_0
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x4

    return v0

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isMaxValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const v0, 0x7fffffff

    return v0

    .line 98
    :cond_1
    const/16 v0, 0xa

    return v0

    .line 91
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 89
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 87
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 85
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 83
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 81
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 79
    :pswitch_7
    return v1

    .line 77
    :pswitch_8
    return v1

    .line 75
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 73
    :pswitch_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
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

.method public static upperBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I
    .locals 2
    .param p0, "left"    # Lcom/google/firestore/v1/Value;
    .param p1, "leftInclusive"    # Z
    .param p2, "right"    # Lcom/google/firestore/v1/Value;
    .param p3, "rightInclusive"    # Z

    .line 249
    invoke-static {p0, p2}, Lcom/google/firebase/firestore/model/Values;->compare(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)I

    move-result v0

    .line 250
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 251
    return v0

    .line 254
    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 255
    const/4 v1, 0x1

    return v1

    .line 256
    :cond_1
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 257
    const/4 v1, -0x1

    return v1

    .line 260
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
