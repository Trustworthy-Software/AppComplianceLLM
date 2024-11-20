.class public final enum Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
.super Ljava/lang/Enum;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator$OperatorVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final enum ARRAY_CONTAINS:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final enum ARRAY_CONTAINS_ANY:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final ARRAY_CONTAINS_ANY_VALUE:I = 0x9

.field public static final ARRAY_CONTAINS_VALUE:I = 0x7

.field public static final enum EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final EQUAL_VALUE:I = 0x5

.field public static final enum GREATER_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final enum GREATER_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final GREATER_THAN_OR_EQUAL_VALUE:I = 0x4

.field public static final GREATER_THAN_VALUE:I = 0x3

.field public static final enum IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final IN_VALUE:I = 0x8

.field public static final enum LESS_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final enum LESS_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final LESS_THAN_OR_EQUAL_VALUE:I = 0x2

.field public static final LESS_THAN_VALUE:I = 0x1

.field public static final enum NOT_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final NOT_EQUAL_VALUE:I = 0x6

.field public static final enum NOT_IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final NOT_IN_VALUE:I = 0xa

.field public static final enum OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field public static final OPERATOR_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 2249
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v1, "OPERATOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2259
    new-instance v1, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v2, "LESS_THAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2269
    new-instance v2, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v3, "LESS_THAN_OR_EQUAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2279
    new-instance v3, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v4, "GREATER_THAN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2289
    new-instance v4, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v5, "GREATER_THAN_OR_EQUAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2297
    new-instance v5, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v6, "EQUAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2308
    new-instance v6, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v7, "NOT_EQUAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2316
    new-instance v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v8, "ARRAY_CONTAINS"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2327
    new-instance v8, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v9, "IN"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2339
    new-instance v9, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v10, "ARRAY_CONTAINS_ANY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2352
    new-instance v10, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const-string v11, "NOT_IN"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2353
    new-instance v11, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    const/16 v12, 0xb

    const/4 v13, -0x1

    const-string v14, "UNRECOGNIZED"

    invoke-direct {v11, v14, v12, v13}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2240
    filled-new-array/range {v0 .. v11}, [Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    .line 2510
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator$1;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 2534
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2535
    iput p3, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->value:I

    .line 2536
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 1
    .param p0, "value"    # I

    .line 2489
    packed-switch p0, :pswitch_data_0

    .line 2501
    const/4 v0, 0x0

    return-object v0

    .line 2500
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2499
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2498
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->IN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2497
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2496
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2495
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2494
    :pswitch_6
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2493
    :pswitch_7
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->GREATER_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2492
    :pswitch_8
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2491
    :pswitch_9
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->LESS_THAN:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0

    .line 2490
    :pswitch_a
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

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

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;",
            ">;"
        }
    .end annotation

    .line 2507
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 2520
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator$OperatorVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2485
    invoke-static {p0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2240
    const-class v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;
    .locals 1

    .line 2240
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 2471
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;

    if-eq p0, v0, :cond_0

    .line 2475
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Operator;->value:I

    return v0

    .line 2472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
