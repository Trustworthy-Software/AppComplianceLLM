.class public Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;
.super Ljava/lang/Object;
.source "FirestoreIndexValueWriter.java"


# static fields
.field public static final DOCUMENT_NAME_OFFSET:I = 0x5

.field public static final INDEX_TYPE_ARRAY:I = 0x32

.field public static final INDEX_TYPE_BLOB:I = 0x1e

.field public static final INDEX_TYPE_BOOLEAN:I = 0xa

.field public static final INDEX_TYPE_GEOPOINT:I = 0x2d

.field public static final INDEX_TYPE_MAP:I = 0x37

.field public static final INDEX_TYPE_NAN:I = 0xd

.field public static final INDEX_TYPE_NULL:I = 0x5

.field public static final INDEX_TYPE_NUMBER:I = 0xf

.field public static final INDEX_TYPE_REFERENCE:I = 0x25

.field public static final INDEX_TYPE_REFERENCE_SEGMENT:I = 0x3c

.field public static final INDEX_TYPE_STRING:I = 0x19

.field public static final INDEX_TYPE_TIMESTAMP:I = 0x14

.field public static final INSTANCE:Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

.field public static final NOT_TRUNCATED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

    invoke-direct {v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->INSTANCE:Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeIndexArray(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 2
    .param p1, "arrayIndexValue"    # Lcom/google/firestore/v1/ArrayValue;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 152
    const/16 v0, 0x32

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 153
    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 154
    .local v1, "element":Lcom/google/firestore/v1/Value;
    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValueAux(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 155
    .end local v1    # "element":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private writeIndexEntityRef(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 5
    .param p1, "referenceValue"    # Ljava/lang/String;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 159
    const/16 v0, 0x25

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 161
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 162
    .local v0, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    .line 163
    .local v1, "numSegments":I
    const/4 v2, 0x5

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "segment":Ljava/lang/String;
    const/16 v4, 0x3c

    invoke-direct {p0, p2, v4}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 166
    invoke-direct {p0, v3, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeUnlabeledIndexString(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 163
    .end local v3    # "segment":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "index":I
    :cond_0
    return-void
.end method

.method private writeIndexMap(Lcom/google/firestore/v1/MapValue;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 4
    .param p1, "mapIndexValue"    # Lcom/google/firestore/v1/MapValue;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 142
    const/16 v0, 0x37

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 143
    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    .line 146
    .local v3, "value":Lcom/google/firestore/v1/Value;
    invoke-direct {p0, v2, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexString(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 147
    invoke-direct {p0, v3, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValueAux(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 148
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private writeIndexString(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 1
    .param p1, "stringIndexValue"    # Ljava/lang/String;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 132
    const/16 v0, 0x19

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeUnlabeledIndexString(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 134
    return-void
.end method

.method private writeIndexValueAux(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 4
    .param p1, "indexValue"    # Lcom/google/firestore/v1/Value;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 63
    sget-object v0, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter$1;->$SwitchMap$com$google$firestore$v1$Value$ValueTypeCase:[I

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xf

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown index value type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexArray(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 123
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeTruncationMarker(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 124
    goto/16 :goto_1

    .line 114
    :pswitch_1
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->isMaxValue(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const v0, 0x7fffffff

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 116
    goto/16 :goto_1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexMap(Lcom/google/firestore/v1/MapValue;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 119
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeTruncationMarker(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 120
    goto/16 :goto_1

    .line 108
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v0

    .line 109
    .local v0, "geoPoint":Lcom/google/type/LatLng;
    const/16 v1, 0x2d

    invoke-direct {p0, p2, v1}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 110
    invoke-virtual {v0}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeDouble(D)V

    .line 111
    invoke-virtual {v0}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeDouble(D)V

    .line 112
    goto/16 :goto_1

    .line 105
    .end local v0    # "geoPoint":Lcom/google/type/LatLng;
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexEntityRef(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 106
    goto/16 :goto_1

    .line 100
    :pswitch_4
    const/16 v0, 0x1e

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 101
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeBytes(Lcom/google/protobuf/ByteString;)V

    .line 102
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeTruncationMarker(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 103
    goto/16 :goto_1

    .line 96
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexString(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 97
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeTruncationMarker(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 98
    goto :goto_1

    .line 90
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    .line 91
    .local v0, "timestamp":Lcom/google/protobuf/Timestamp;
    const/16 v1, 0x14

    invoke-direct {p0, p2, v1}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 92
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeLong(J)V

    .line 93
    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeLong(J)V

    .line 94
    goto :goto_1

    .line 85
    .end local v0    # "timestamp":Lcom/google/protobuf/Timestamp;
    :pswitch_7
    invoke-direct {p0, p2, v1}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 87
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeDouble(D)V

    .line 88
    goto :goto_1

    .line 72
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v2

    .line 73
    .local v2, "number":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/16 v0, 0xd

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 75
    goto :goto_1

    .line 77
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 78
    const-wide/high16 v0, -0x8000000000000000L

    cmpl-double v0, v2, v0

    if-nez v0, :cond_2

    .line 79
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeDouble(D)V

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p2, v2, v3}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeDouble(D)V

    .line 83
    goto :goto_1

    .line 68
    .end local v2    # "number":D
    :pswitch_9
    const/16 v0, 0xa

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 69
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeLong(J)V

    .line 70
    goto :goto_1

    .line 65
    :pswitch_a
    const/4 v0, 0x5

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V

    .line 66
    nop

    .line 129
    :goto_1
    return-void

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

.method private writeTruncationMarker(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 2
    .param p1, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 177
    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeLong(J)V

    .line 178
    return-void
.end method

.method private writeUnlabeledIndexString(Ljava/lang/String;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 0
    .param p1, "stringIndexValue"    # Ljava/lang/String;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 138
    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeString(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private writeValueTypeLabel(Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;I)V
    .locals 2
    .param p1, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;
    .param p2, "typeOrder"    # I

    .line 171
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeLong(J)V

    .line 172
    return-void
.end method


# virtual methods
.method public writeIndexValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/Value;
    .param p2, "encoder"    # Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/index/FirestoreIndexValueWriter;->writeIndexValueAux(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;)V

    .line 59
    invoke-virtual {p2}, Lcom/google/firebase/firestore/index/DirectionalIndexByteEncoder;->writeInfinity()V

    .line 60
    return-void
.end method
