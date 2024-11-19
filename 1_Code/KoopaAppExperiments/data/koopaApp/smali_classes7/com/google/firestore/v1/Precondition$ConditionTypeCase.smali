.class public final enum Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
.super Ljava/lang/Enum;
.source "Precondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Precondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Precondition$ConditionTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

.field public static final enum CONDITIONTYPE_NOT_SET:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

.field public static final enum EXISTS:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

.field public static final enum UPDATE_TIME:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    const-string v1, "EXISTS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->EXISTS:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    .line 24
    new-instance v1, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    const-string v4, "UPDATE_TIME"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->UPDATE_TIME:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    .line 25
    new-instance v3, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    const-string v4, "CONDITIONTYPE_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->CONDITIONTYPE_NOT_SET:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    .line 22
    filled-new-array {v0, v1, v3}, [Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->$VALUES:[Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->value:I

    .line 29
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
    .locals 1
    .param p0, "value"    # I

    .line 39
    packed-switch p0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 41
    :pswitch_0
    sget-object v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->UPDATE_TIME:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    return-object v0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->EXISTS:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    return-object v0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->CONDITIONTYPE_NOT_SET:Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->forNumber(I)Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/Precondition$ConditionTypeCase;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->$VALUES:[Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Precondition$ConditionTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/firestore/v1/Precondition$ConditionTypeCase;->value:I

    return v0
.end method
