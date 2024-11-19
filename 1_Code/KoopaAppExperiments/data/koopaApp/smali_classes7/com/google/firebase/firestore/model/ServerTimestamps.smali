.class public final Lcom/google/firebase/firestore/model/ServerTimestamps;
.super Ljava/lang/Object;
.source "ServerTimestamps.java"


# static fields
.field private static final LOCAL_WRITE_TIME_KEY:Ljava/lang/String; = "__local_write_time__"

.field private static final PREVIOUS_VALUE_KEY:Ljava/lang/String; = "__previous_value__"

.field private static final SERVER_TIMESTAMP_SENTINEL:Ljava/lang/String; = "server_timestamp"

.field private static final TYPE_KEY:Ljava/lang/String; = "__type__"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalWriteTime(Lcom/google/firestore/v1/Value;)Lcom/google/protobuf/Timestamp;
    .locals 2
    .param p0, "serverTimestampValue"    # Lcom/google/firestore/v1/Value;

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    .line 101
    const-string v1, "__local_write_time__"

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/MapValue;->getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getTimestampValue()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public static getPreviousValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p0, "serverTimestampValue"    # Lcom/google/firestore/v1/Value;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    const-string v1, "__previous_value__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 92
    .local v0, "previousValue":Lcom/google/firestore/v1/Value;
    invoke-static {v0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {v0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getPreviousValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    return-object v0
.end method

.method public static isServerTimestamp(Lcom/google/firestore/v1/Value;)Z
    .locals 3
    .param p0, "value"    # Lcom/google/firestore/v1/Value;

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    const-string v2, "__type__"

    invoke-virtual {v1, v2, v0}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 47
    .local v0, "type":Lcom/google/firestore/v1/Value;
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "server_timestamp"

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static valueOf(Lcom/google/firebase/Timestamp;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 5
    .param p0, "localWriteTime"    # Lcom/google/firebase/Timestamp;
    .param p1, "previousValue"    # Lcom/google/firestore/v1/Value;

    .line 51
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    const-string v1, "server_timestamp"

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 53
    .local v0, "encodedType":Lcom/google/firestore/v1/Value;
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 55
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/Timestamp$Builder;->setNanos(I)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setTimestampValue(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    .line 61
    .local v1, "encodeWriteTime":Lcom/google/firestore/v1/Value;
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    .line 62
    const-string v3, "__type__"

    invoke-virtual {v2, v3, v0}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    .line 63
    const-string v3, "__local_write_time__"

    invoke-virtual {v2, v3, v1}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    .line 74
    .local v2, "mapRepresentation":Lcom/google/firestore/v1/MapValue$Builder;
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getPreviousValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    move-object p1, v3

    .line 75
    if-eqz p1, :cond_1

    .line 76
    const-string v3, "__previous_value__"

    invoke-virtual {v2, v3, p1}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    .line 79
    :cond_1
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    return-object v3
.end method
