.class public final Lcom/google/firestore/v1/Value;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Value.java"

# interfaces
.implements Lcom/google/firestore/v1/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Value$Builder;,
        Lcom/google/firestore/v1/Value$ValueTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARRAY_VALUE_FIELD_NUMBER:I = 0x9

.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x1

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x12

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final GEO_POINT_VALUE_FIELD_NUMBER:I = 0x8

.field public static final INTEGER_VALUE_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x11

.field public static final TIMESTAMP_VALUE_FIELD_NUMBER:I = 0xa


# instance fields
.field private valueTypeCase_:I

.field private valueType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1853
    new-instance v0, Lcom/google/firestore/v1/Value;

    invoke-direct {v0}, Lcom/google/firestore/v1/Value;-><init>()V

    .line 1856
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Value;
    sput-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    .line 1857
    const-class v1, Lcom/google/firestore/v1/Value;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1859
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Value;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearValueType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearDoubleValue()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setTimestampValue(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->mergeTimestampValue(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearTimestampValue()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearStringValue()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setStringValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setBytesValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearBytesValue()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setReferenceValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Value;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setNullValueValue(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearReferenceValue()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setReferenceValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/Value;Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/type/LatLng;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setGeoPointValue(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/Value;Lcom/google/type/LatLng;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/type/LatLng;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->mergeGeoPointValue(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearGeoPointValue()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/firestore/v1/ArrayValue;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setArrayValue(Lcom/google/firestore/v1/ArrayValue;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/firestore/v1/ArrayValue;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->mergeArrayValue(Lcom/google/firestore/v1/ArrayValue;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearArrayValue()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/firestore/v1/MapValue;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setMapValue(Lcom/google/firestore/v1/MapValue;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/firestore/v1/MapValue;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->mergeMapValue(Lcom/google/firestore/v1/MapValue;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/NullValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Lcom/google/protobuf/NullValue;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setNullValue(Lcom/google/protobuf/NullValue;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearMapValue()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearNullValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Value;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setBooleanValue(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearBooleanValue()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Value;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Value;->setIntegerValue(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Value;->clearIntegerValue()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Value;D)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Value;
    .param p1, "x1"    # D

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Value;->setDoubleValue(D)V

    return-void
.end method

.method private clearArrayValue()V
    .locals 2

    .line 812
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 813
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 816
    :cond_0
    return-void
.end method

.method private clearBooleanValue()V
    .locals 2

    .line 211
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 215
    :cond_0
    return-void
.end method

.method private clearBytesValue()V
    .locals 2

    .line 568
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 572
    :cond_0
    return-void
.end method

.method private clearDoubleValue()V
    .locals 2

    .line 319
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 323
    :cond_0
    return-void
.end method

.method private clearGeoPointValue()V
    .locals 2

    .line 732
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 736
    :cond_0
    return-void
.end method

.method private clearIntegerValue()V
    .locals 2

    .line 265
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 269
    :cond_0
    return-void
.end method

.method private clearMapValue()V
    .locals 2

    .line 882
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 883
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 886
    :cond_0
    return-void
.end method

.method private clearNullValue()V
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method

.method private clearReferenceValue()V
    .locals 2

    .line 647
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 651
    :cond_0
    return-void
.end method

.method private clearStringValue()V
    .locals 2

    .line 488
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 492
    :cond_0
    return-void
.end method

.method private clearTimestampValue()V
    .locals 2

    .line 399
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 403
    :cond_0
    return-void
.end method

.method private clearValueType()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1862
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method private mergeArrayValue(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/ArrayValue;

    .line 792
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 794
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 795
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0}, Lcom/google/firestore/v1/ArrayValue;->newBuilder(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    .line 796
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ArrayValue$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ArrayValue$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ArrayValue$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_0

    .line 798
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 800
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 801
    return-void
.end method

.method private mergeGeoPointValue(Lcom/google/type/LatLng;)V
    .locals 3
    .param p1, "value"    # Lcom/google/type/LatLng;

    .line 714
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 716
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 717
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/LatLng;

    invoke-static {v0}, Lcom/google/type/LatLng;->newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    .line 718
    invoke-virtual {v0, p1}, Lcom/google/type/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng$Builder;

    invoke-virtual {v0}, Lcom/google/type/LatLng$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_0

    .line 720
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 722
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 723
    return-void
.end method

.method private mergeMapValue(Lcom/google/firestore/v1/MapValue;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/MapValue;

    .line 864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 866
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 867
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    invoke-static {v0}, Lcom/google/firestore/v1/MapValue;->newBuilder(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    .line 868
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/MapValue$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/MapValue$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_0

    .line 870
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 872
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 873
    return-void
.end method

.method private mergeTimestampValue(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 381
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    goto :goto_0

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 387
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 388
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 963
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Value;

    .line 966
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Value;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Value;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Value;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 904
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 911
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 891
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 898
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 916
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 923
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 1868
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArrayValue(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ArrayValue;

    .line 778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 780
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 781
    return-void
.end method

.method private setBooleanValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 201
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method private setBytesValue(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 555
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x12

    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 556
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 557
    return-void
.end method

.method private setDoubleValue(D)V
    .locals 1
    .param p1, "value"    # D

    .line 308
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 309
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 310
    return-void
.end method

.method private setGeoPointValue(Lcom/google/type/LatLng;)V
    .locals 1
    .param p1, "value"    # Lcom/google/type/LatLng;

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 704
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 705
    return-void
.end method

.method private setIntegerValue(J)V
    .locals 1
    .param p1, "value"    # J

    .line 254
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 255
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private setMapValue(Lcom/google/firestore/v1/MapValue;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/MapValue;

    .line 852
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 853
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 854
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 855
    return-void
.end method

.method private setNullValue(Lcom/google/protobuf/NullValue;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/NullValue;

    .line 146
    invoke-virtual {p1}, Lcom/google/protobuf/NullValue;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 147
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 148
    return-void
.end method

.method private setNullValueValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 134
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private setReferenceValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 635
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 636
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 637
    return-void
.end method

.method private setReferenceValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 663
    invoke-static {p1}, Lcom/google/firestore/v1/Value;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 664
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 665
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 666
    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 474
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x11

    iput v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 475
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 476
    return-void
.end method

.method private setStringValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 506
    invoke-static {p1}, Lcom/google/firestore/v1/Value;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 507
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 508
    const/16 v0, 0x11

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 509
    return-void
.end method

.method private setTimestampValue(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    .line 367
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 368
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1798
    sget-object v0, Lcom/google/firestore/v1/Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1843
    :pswitch_0
    return-object v1

    .line 1840
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1825
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 1826
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Value;>;"
    if-nez v0, :cond_1

    .line 1827
    const-class v1, Lcom/google/firestore/v1/Value;

    monitor-enter v1

    .line 1828
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1829
    if-nez v0, :cond_0

    .line 1830
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1833
    sput-object v0, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 1835
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1837
    :cond_1
    :goto_0
    return-object v0

    .line 1822
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Value;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0

    .line 1806
    :pswitch_4
    const-string v1, "valueType_"

    const-string v2, "valueTypeCase_"

    const-class v3, Lcom/google/firestore/v1/MapValue;

    const-class v4, Lcom/google/type/LatLng;

    const-class v5, Lcom/google/firestore/v1/ArrayValue;

    const-class v6, Lcom/google/protobuf/Timestamp;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 1814
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005\u023b\u0000\u0006<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011\u023b\u0000\u0012=\u0000"

    .line 1818
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Value;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1803
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Value$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Value$Builder;-><init>(Lcom/google/firestore/v1/Value$1;)V

    return-object v0

    .line 1800
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Value;

    invoke-direct {v0}, Lcom/google/firestore/v1/Value;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getArrayValue()Lcom/google/firestore/v1/ArrayValue;
    .locals 2

    .line 763
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    return-object v0

    .line 766
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 2

    .line 186
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 538
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 541
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 294
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 297
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGeoPointValue()Lcom/google/type/LatLng;
    .locals 2

    .line 689
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0

    .line 692
    :cond_0
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()J
    .locals 2

    .line 240
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 243
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMapValue()Lcom/google/firestore/v1/MapValue;
    .locals 2

    .line 839
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 840
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    return-object v0

    .line 842
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/google/protobuf/NullValue;
    .locals 2

    .line 119
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/NullValue;->forNumber(I)Lcom/google/protobuf/NullValue;

    move-result-object v0

    .line 121
    .local v0, "result":Lcom/google/protobuf/NullValue;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/NullValue;->UNRECOGNIZED:Lcom/google/protobuf/NullValue;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 123
    .end local v0    # "result":Lcom/google/protobuf/NullValue;
    :cond_1
    sget-object v0, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 2

    .line 104
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 3

    .line 599
    const-string v0, ""

    .line 600
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 601
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 603
    :cond_0
    return-object v0
.end method

.method public getReferenceValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 617
    const-string v0, ""

    .line 618
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 619
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 621
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    .line 434
    const-string v0, ""

    .line 435
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 436
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 438
    :cond_0
    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 454
    const-string v0, ""

    .line 455
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 458
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public getTimestampValue()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 350
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 353
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasArrayValue()Z
    .locals 2

    .line 750
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBooleanValue()Z
    .locals 2

    .line 174
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasBytesValue()Z
    .locals 2

    .line 524
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDoubleValue()Z
    .locals 2

    .line 282
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGeoPointValue()Z
    .locals 2

    .line 678
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntegerValue()Z
    .locals 2

    .line 228
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMapValue()Z
    .locals 2

    .line 828
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNullValue()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReferenceValue()Z
    .locals 2

    .line 586
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStringValue()Z
    .locals 2

    .line 419
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestampValue()Z
    .locals 2

    .line 337
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
