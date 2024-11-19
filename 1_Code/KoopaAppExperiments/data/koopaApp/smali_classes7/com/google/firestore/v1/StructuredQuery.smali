.class public final Lcom/google/firestore/v1/StructuredQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Builder;,
        Lcom/google/firestore/v1/StructuredQuery$Projection;,
        Lcom/google/firestore/v1/StructuredQuery$ProjectionOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$FieldReference;,
        Lcom/google/firestore/v1/StructuredQuery$FieldReferenceOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$Order;,
        Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$FieldFilter;,
        Lcom/google/firestore/v1/StructuredQuery$FieldFilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;,
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$Filter;,
        Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;,
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;,
        Lcom/google/firestore/v1/StructuredQuery$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery;",
        "Lcom/google/firestore/v1/StructuredQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQueryOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

.field public static final END_AT_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x6

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final START_AT_FIELD_NUMBER:I = 0x7

.field public static final WHERE_FIELD_NUMBER:I = 0x3


# instance fields
.field private endAt_:Lcom/google/firestore/v1/Cursor;

.field private from_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation
.end field

.field private limit_:Lcom/google/protobuf/Int32Value;

.field private offset_:I

.field private orderBy_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation
.end field

.field private select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

.field private startAt_:Lcom/google/firestore/v1/Cursor;

.field private where_:Lcom/google/firestore/v1/StructuredQuery$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7039
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery;-><init>()V

    .line 7042
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredQuery;
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    .line 7043
    const-class v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7045
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method static synthetic access$10000(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearLimit()V

    return-void
.end method

.method static synthetic access$7100()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearSelect()V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addAllFrom(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearFrom()V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/firestore/v1/StructuredQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->removeFrom(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearWhere()V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addAllOrderBy(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearOrderBy()V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/firestore/v1/StructuredQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->removeOrderBy(I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setStartAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeStartAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearStartAt()V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setEndAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/Cursor;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeEndAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearEndAt()V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/firestore/v1/StructuredQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setOffset(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->clearOffset()V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setLimit(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->mergeLimit(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method private addAllFrom(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;)V"
        }
    .end annotation

    .line 5381
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5382
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5384
    return-void
.end method

.method private addAllOrderBy(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;)V"
        }
    .end annotation

    .line 5702
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$Order;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5703
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5705
    return-void
.end method

.method private addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 5368
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5369
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5370
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 5371
    return-void
.end method

.method private addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 5355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5356
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5357
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 5358
    return-void
.end method

.method private addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 5676
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5677
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5678
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 5679
    return-void
.end method

.method private addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 5650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5651
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5652
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 5653
    return-void
.end method

.method private clearEndAt()V
    .locals 1

    .line 5882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 5884
    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 5393
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5394
    return-void
.end method

.method private clearLimit()V
    .locals 1

    .line 6002
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 6004
    return-void
.end method

.method private clearOffset()V
    .locals 1

    .line 5927
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery;->offset_:I

    .line 5928
    return-void
.end method

.method private clearOrderBy()V
    .locals 1

    .line 5727
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5728
    return-void
.end method

.method private clearSelect()V
    .locals 1

    .line 5265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5267
    return-void
.end method

.method private clearStartAt()V
    .locals 1

    .line 5816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 5818
    return-void
.end method

.method private clearWhere()V
    .locals 1

    .line 5469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5471
    return-void
.end method

.method private ensureFromIsMutable()V
    .locals 2

    .line 5327
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5328
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5329
    nop

    .line 5330
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5332
    :cond_0
    return-void
.end method

.method private ensureOrderByIsMutable()V
    .locals 2

    .line 5596
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5597
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/StructuredQuery$Order;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5598
    nop

    .line 5599
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5601
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 7048
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method private mergeEndAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 5865
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5866
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    .line 5867
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5868
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 5869
    invoke-static {v0}, Lcom/google/firestore/v1/Cursor;->newBuilder(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/Cursor$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Cursor$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    goto :goto_0

    .line 5871
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 5874
    :goto_0
    return-void
.end method

.method private mergeLimit(Lcom/google/protobuf/Int32Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 5983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5984
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    .line 5985
    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5986
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 5987
    invoke-static {v0}, Lcom/google/protobuf/Int32Value;->newBuilder(Lcom/google/protobuf/Int32Value;)Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int32Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Int32Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    goto :goto_0

    .line 5989
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 5992
    :goto_0
    return-void
.end method

.method private mergeSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5249
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    if-eqz v0, :cond_0

    .line 5250
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Projection;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Projection;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5251
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5252
    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Projection;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    goto :goto_0

    .line 5254
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5257
    :goto_0
    return-void
.end method

.method private mergeStartAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 5799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5800
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    .line 5801
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5802
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 5803
    invoke-static {v0}, Lcom/google/firestore/v1/Cursor;->newBuilder(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/Cursor$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Cursor$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Cursor$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    goto :goto_0

    .line 5805
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 5808
    :goto_0
    return-void
.end method

.method private mergeWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5453
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-eqz v0, :cond_0

    .line 5454
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5455
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5456
    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    goto :goto_0

    .line 5458
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5461
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6081
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 6084
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6058
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6064
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6022
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6029
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6069
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6076
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6046
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6053
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6009
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6016
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6034
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6041
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery;",
            ">;"
        }
    .end annotation

    .line 7054
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFrom(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5403
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5404
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 5405
    return-void
.end method

.method private removeOrderBy(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5750
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5751
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 5752
    return-void
.end method

.method private setEndAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 5852
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5853
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    .line 5855
    return-void
.end method

.method private setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 5343
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5344
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5345
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5346
    return-void
.end method

.method private setLimit(Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 5968
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5969
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    .line 5971
    return-void
.end method

.method private setOffset(I)V
    .locals 0
    .param p1, "value"    # I

    .line 5914
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery;->offset_:I

    .line 5915
    return-void
.end method

.method private setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 5625
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5626
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5627
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5628
    return-void
.end method

.method private setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5236
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 5238
    return-void
.end method

.method private setStartAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 5786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5787
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    .line 5789
    return-void
.end method

.method private setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5440
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 5442
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 6981
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7032
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7029
    :pswitch_0
    return-object v1

    .line 7026
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7011
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 7012
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery;>;"
    if-nez v0, :cond_1

    .line 7013
    const-class v1, Lcom/google/firestore/v1/StructuredQuery;

    monitor-enter v1

    .line 7014
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 7015
    if-nez v0, :cond_0

    .line 7016
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 7019
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 7021
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7023
    :cond_1
    :goto_0
    return-object v0

    .line 7008
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 6989
    :pswitch_4
    const-string v1, "select_"

    const-string v2, "from_"

    const-class v3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    const-string v4, "where_"

    const-string v5, "orderBy_"

    const-class v6, Lcom/google/firestore/v1/StructuredQuery$Order;

    const-string v7, "limit_"

    const-string v8, "offset_"

    const-string v9, "startAt_"

    const-string v10, "endAt_"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 7001
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\u0008\t"

    .line 7004
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 6986
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object v0

    .line 6983
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery;-><init>()V

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

.method public getEndAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 5842
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .param p1, "index"    # I

    .line 5313
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object v0
.end method

.method public getFromCount()I
    .locals 1

    .line 5302
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFromList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation

    .line 5280
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFromOrBuilder(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 5324
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;

    return-object v0
.end method

.method public getFromOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelectorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5291
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLimit()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 5956
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 5900
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery;->offset_:I

    return v0
.end method

.method public getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .param p1, "index"    # I

    .line 5569
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v0
.end method

.method public getOrderByCount()I
    .locals 1

    .line 5545
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation

    .line 5497
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOrderByOrBuilder(I)Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 5593
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;

    return-object v0
.end method

.method public getOrderByOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$OrderOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5521
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSelect()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 5225
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Projection;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Projection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStartAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 5776
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 5429
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasEndAt()Z
    .locals 1

    .line 5831
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 5943
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelect()Z
    .locals 1

    .line 5214
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStartAt()Z
    .locals 1

    .line 5765
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .line 5418
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
