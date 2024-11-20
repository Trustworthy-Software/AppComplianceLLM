.class public final enum Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
.super Ljava/lang/Enum;
.source "StructuredAggregationQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperatorCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

.field public static final enum AVG:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

.field public static final enum COUNT:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

.field public static final enum OPERATOR_NOT_SET:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

.field public static final enum SUM:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1297
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    const-string v1, "COUNT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->COUNT:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    .line 1298
    new-instance v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    const-string v4, "SUM"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->SUM:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    .line 1299
    new-instance v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    const-string v4, "AVG"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->AVG:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    .line 1300
    new-instance v4, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    const-string v5, "OPERATOR_NOT_SET"

    invoke-direct {v4, v5, v6, v2}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->OPERATOR_NOT_SET:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    .line 1296
    filled-new-array {v0, v1, v3, v4}, [Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->$VALUES:[Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1303
    iput p3, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->value:I

    .line 1304
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1
    .param p0, "value"    # I

    .line 1314
    packed-switch p0, :pswitch_data_0

    .line 1319
    const/4 v0, 0x0

    return-object v0

    .line 1317
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->AVG:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-object v0

    .line 1316
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->SUM:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-object v0

    .line 1315
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->COUNT:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-object v0

    .line 1318
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->OPERATOR_NOT_SET:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1310
    invoke-static {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->forNumber(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1296
    const-class v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1

    .line 1296
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->$VALUES:[Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1323
    iget v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;->value:I

    return v0
.end method
