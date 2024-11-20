.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aggregation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$AvgOrBuilder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$SumOrBuilder;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;,
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$CountOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALIAS_FIELD_NUMBER:I = 0x7

.field public static final AVG_FIELD_NUMBER:I = 0x3

.field public static final COUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUM_FIELD_NUMBER:I = 0x2


# instance fields
.field private alias_:Ljava/lang/String;

.field private operatorCase_:I

.field private operator_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2113
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;-><init>()V

    .line 2116
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2117
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2119
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1294
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$1500()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1

    .line 115
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 115
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearOperator()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->mergeCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 115
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->mergeSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 115
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearSum()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->mergeAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 115
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearAvg()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setAlias(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 115
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->clearAlias()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 115
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->setAliasBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAlias()V
    .locals 1

    .line 1615
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    .line 1616
    return-void
.end method

.method private clearAvg()V
    .locals 2

    .line 1543
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1544
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1547
    :cond_0
    return-void
.end method

.method private clearCount()V
    .locals 2

    .line 1403
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1404
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1407
    :cond_0
    return-void
.end method

.method private clearOperator()V
    .locals 1

    .line 1335
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1337
    return-void
.end method

.method private clearSum()V
    .locals 2

    .line 1473
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1474
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1477
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1

    .line 2122
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method private mergeAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 1525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1526
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1527
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    move-result-object v0

    .line 1529
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    goto :goto_0

    .line 1531
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1533
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1534
    return-void
.end method

.method private mergeCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 1385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1386
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1387
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    move-result-object v0

    .line 1389
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    goto :goto_0

    .line 1391
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1393
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1394
    return-void
.end method

.method private mergeSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 1455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1456
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1457
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    move-result-object v0

    .line 1459
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    goto :goto_0

    .line 1461
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1463
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1464
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 1711
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 1714
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1688
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1694
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1652
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1659
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1699
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1706
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1676
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1683
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1639
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1646
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1664
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1671
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation

    .line 2128
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlias(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1600
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    .line 1601
    return-void
.end method

.method private setAliasBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1631
    invoke-static {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1632
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    .line 1634
    return-void
.end method

.method private setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 1513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1514
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1515
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1516
    return-void
.end method

.method private setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 1373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1374
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1375
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1376
    return-void
.end method

.method private setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 1443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1444
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    .line 1445
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    .line 1446
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2059
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2103
    :pswitch_0
    return-object v1

    .line 2100
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2085
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->PARSER:Lcom/google/protobuf/Parser;

    .line 2086
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;>;"
    if-nez v0, :cond_1

    .line 2087
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    monitor-enter v1

    .line 2088
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2089
    if-nez v0, :cond_0

    .line 2090
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2093
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->PARSER:Lcom/google/protobuf/Parser;

    .line 2095
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2097
    :cond_1
    :goto_0
    return-object v0

    .line 2082
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    return-object v0

    .line 2067
    :pswitch_4
    const-string v1, "operator_"

    const-string v2, "operatorCase_"

    const-class v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    const-class v4, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    const-class v5, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    const-string v6, "alias_"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 2075
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0001\u0000\u0001\u0007\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0007\u0208"

    .line 2078
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2064
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;-><init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V

    return-object v0

    .line 2061
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;-><init>()V

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

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    return-object v0
.end method

.method public getAliasBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1582
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->alias_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAvg()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;
    .locals 2

    .line 1500
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    return-object v0

    .line 1503
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    move-result-object v0

    return-object v0
.end method

.method public getCount()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 2

    .line 1360
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0

    .line 1363
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorCase()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1

    .line 1330
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->forNumber(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    move-result-object v0

    return-object v0
.end method

.method public getSum()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 2

    .line 1430
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operator_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0

    .line 1433
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    move-result-object v0

    return-object v0
.end method

.method public hasAvg()Z
    .locals 2

    .line 1489
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCount()Z
    .locals 2

    .line 1349
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSum()Z
    .locals 2

    .line 1419
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->operatorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
