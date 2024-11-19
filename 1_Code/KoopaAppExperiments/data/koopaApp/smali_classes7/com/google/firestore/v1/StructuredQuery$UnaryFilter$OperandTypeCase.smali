.class public final enum Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
.super Ljava/lang/Enum;
.source "StructuredQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperandTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

.field public static final enum FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

.field public static final enum OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3352
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    const/4 v1, 0x2

    const-string v2, "FIELD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    .line 3353
    new-instance v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    const-string v2, "OPERANDTYPE_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    .line 3351
    filled-new-array {v0, v1}, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

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

    .line 3355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3356
    iput p3, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->value:I

    .line 3357
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 3367
    packed-switch p0, :pswitch_data_0

    .line 3370
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 3368
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object v0

    .line 3369
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3363
    invoke-static {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3351
    const-class v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1

    .line 3351
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 3374
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->value:I

    return v0
.end method
