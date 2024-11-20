.class public final enum Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
.super Ljava/lang/Enum;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator$OperatorVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field public static final enum IS_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field public static final IS_NAN_VALUE:I = 0x2

.field public static final enum IS_NOT_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field public static final IS_NOT_NAN_VALUE:I = 0x4

.field public static final enum IS_NOT_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field public static final IS_NOT_NULL_VALUE:I = 0x5

.field public static final enum IS_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field public static final IS_NULL_VALUE:I = 0x3

.field public static final enum OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field public static final OPERATOR_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3193
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    const-string v1, "OPERATOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3201
    new-instance v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    const-string v2, "IS_NAN"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3209
    new-instance v2, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    const-string v3, "IS_NULL"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3220
    new-instance v3, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    const-string v4, "IS_NOT_NAN"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3231
    new-instance v4, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    const-string v5, "IS_NOT_NULL"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3232
    new-instance v5, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    const-string v6, "UNRECOGNIZED"

    const/4 v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3184
    filled-new-array/range {v0 .. v5}, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3318
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator$1;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 3342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3343
    iput p3, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->value:I

    .line 3344
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1
    .param p0, "value"    # I

    .line 3303
    packed-switch p0, :pswitch_data_0

    .line 3309
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 3308
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0

    .line 3307
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NOT_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0

    .line 3306
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NULL:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0

    .line 3305
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->IS_NAN:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0

    .line 3304
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;",
            ">;"
        }
    .end annotation

    .line 3315
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 3328
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator$OperatorVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3299
    invoke-static {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3184
    const-class v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1

    .line 3184
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 3285
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    if-eq p0, v0, :cond_0

    .line 3289
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->value:I

    return v0

    .line 3286
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
