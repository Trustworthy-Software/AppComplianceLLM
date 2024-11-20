.class public final enum Lcom/google/firestore/v1/Write$OperationCase;
.super Ljava/lang/Enum;
.source "Write.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Write;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Write$OperationCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Write$OperationCase;

.field public static final enum DELETE:Lcom/google/firestore/v1/Write$OperationCase;

.field public static final enum OPERATION_NOT_SET:Lcom/google/firestore/v1/Write$OperationCase;

.field public static final enum TRANSFORM:Lcom/google/firestore/v1/Write$OperationCase;

.field public static final enum UPDATE:Lcom/google/firestore/v1/Write$OperationCase;

.field public static final enum VERIFY:Lcom/google/firestore/v1/Write$OperationCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 24
    new-instance v0, Lcom/google/firestore/v1/Write$OperationCase;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/Write$OperationCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Write$OperationCase;->UPDATE:Lcom/google/firestore/v1/Write$OperationCase;

    .line 25
    new-instance v1, Lcom/google/firestore/v1/Write$OperationCase;

    const-string v4, "DELETE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firestore/v1/Write$OperationCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/Write$OperationCase;->DELETE:Lcom/google/firestore/v1/Write$OperationCase;

    .line 26
    new-instance v3, Lcom/google/firestore/v1/Write$OperationCase;

    const-string v4, "VERIFY"

    const/4 v6, 0x5

    invoke-direct {v3, v4, v5, v6}, Lcom/google/firestore/v1/Write$OperationCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/v1/Write$OperationCase;->VERIFY:Lcom/google/firestore/v1/Write$OperationCase;

    .line 27
    new-instance v4, Lcom/google/firestore/v1/Write$OperationCase;

    const/4 v5, 0x3

    const/4 v6, 0x6

    const-string v7, "TRANSFORM"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/firestore/v1/Write$OperationCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/Write$OperationCase;->TRANSFORM:Lcom/google/firestore/v1/Write$OperationCase;

    .line 28
    new-instance v5, Lcom/google/firestore/v1/Write$OperationCase;

    const-string v6, "OPERATION_NOT_SET"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v2}, Lcom/google/firestore/v1/Write$OperationCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/v1/Write$OperationCase;->OPERATION_NOT_SET:Lcom/google/firestore/v1/Write$OperationCase;

    .line 23
    filled-new-array {v0, v1, v3, v4, v5}, [Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/Write$OperationCase;->$VALUES:[Lcom/google/firestore/v1/Write$OperationCase;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/firestore/v1/Write$OperationCase;->value:I

    .line 32
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1
    .param p0, "value"    # I

    .line 42
    packed-switch p0, :pswitch_data_0

    .line 48
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/Write$OperationCase;->TRANSFORM:Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0

    .line 45
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Write$OperationCase;->VERIFY:Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0

    .line 44
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Write$OperationCase;->DELETE:Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0

    .line 43
    :pswitch_4
    sget-object v0, Lcom/google/firestore/v1/Write$OperationCase;->UPDATE:Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0

    .line 47
    :pswitch_5
    sget-object v0, Lcom/google/firestore/v1/Write$OperationCase;->OPERATION_NOT_SET:Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/google/firestore/v1/Write$OperationCase;->forNumber(I)Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/google/firestore/v1/Write$OperationCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firestore/v1/Write$OperationCase;->$VALUES:[Lcom/google/firestore/v1/Write$OperationCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Write$OperationCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Write$OperationCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/firestore/v1/Write$OperationCase;->value:I

    return v0
.end method
