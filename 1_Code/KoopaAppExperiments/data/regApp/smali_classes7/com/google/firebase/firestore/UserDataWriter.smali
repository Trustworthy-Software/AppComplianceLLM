.class public Lcom/google/firebase/firestore/UserDataWriter;
.super Ljava/lang/Object;
.source "UserDataWriter.java"


# instance fields
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)V
    .locals 0
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/firebase/firestore/UserDataWriter;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 59
    iput-object p2, p0, Lcom/google/firebase/firestore/UserDataWriter;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 60
    return-void
.end method

.method private convertArray(Lcom/google/firestore/v1/ArrayValue;)Ljava/util/List;
    .locals 4
    .param p1, "arrayValue"    # Lcom/google/firestore/v1/ArrayValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/ArrayValue;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 124
    .local v2, "v":Lcom/google/firestore/v1/Value;
    invoke-virtual {p0, v2}, Lcom/google/firebase/firestore/UserDataWriter;->convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v2    # "v":Lcom/google/firestore/v1/Value;
    goto :goto_0

    .line 126
    :cond_0
    return-object v0
.end method

.method private convertReference(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;
    .locals 8
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 130
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    .line 131
    .local v0, "refDatabase":Lcom/google/firebase/firestore/model/DatabaseId;
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getReferenceValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 132
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/UserDataWriter;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v2

    .line 133
    .local v2, "database":Lcom/google/firebase/firestore/model/DatabaseId;
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    nop

    .line 140
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 135
    const-string v4, "DocumentSnapshot"

    const-string v5, "Document %s contains a document reference within a different database (%s/%s) which is not supported. It will be treated as a reference in the current database (%s/%s) instead."

    invoke-static {v4, v5, v3}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    new-instance v3, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v4, p0, Lcom/google/firebase/firestore/UserDataWriter;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v3, v1, v4}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v3
.end method

.method private convertServerTimestamp(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;
    .locals 2
    .param p1, "serverTimestampValue"    # Lcom/google/firestore/v1/Value;

    .line 103
    sget-object v0, Lcom/google/firebase/firestore/UserDataWriter$1;->$SwitchMap$com$google$firebase$firestore$DocumentSnapshot$ServerTimestampBehavior:[I

    iget-object v1, p0, Lcom/google/firebase/firestore/UserDataWriter;->serverTimestampBehavior:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 113
    return-object v1

    .line 111
    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertTimestamp(Lcom/google/protobuf/Timestamp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 105
    :pswitch_1
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getPreviousValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 106
    .local v0, "previousValue":Lcom/google/firestore/v1/Value;
    if-nez v0, :cond_0

    .line 107
    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTimestamp(Lcom/google/protobuf/Timestamp;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 118
    new-instance v0, Lcom/google/firebase/Timestamp;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method convertObject(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    .local p1, "mapValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, v4}, Lcom/google/firebase/firestore/UserDataWriter;->convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    goto :goto_0

    .line 99
    :cond_0
    return-object v0
.end method

.method public convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;
    .locals 5
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 63
    invoke-static {p1}, Lcom/google/firebase/firestore/model/Values;->typeOrder(Lcom/google/firestore/v1/Value;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown value type: "

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

    .line 65
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertObject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertArray(Lcom/google/firestore/v1/ArrayValue;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_2
    new-instance v0, Lcom/google/firebase/firestore/GeoPoint;

    .line 88
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/type/LatLng;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getGeoPointValue()Lcom/google/type/LatLng;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/type/LatLng;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/firestore/GeoPoint;-><init>(DD)V

    .line 87
    return-object v0

    .line 69
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/UserDataWriter;->convertReference(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/Blob;->fromByteString(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/Blob;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/UserDataWriter;->convertServerTimestamp(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertTimestamp(Lcom/google/protobuf/Timestamp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$ValueTypeCase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getIntegerValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_a
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
