.class public final enum Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;
.super Ljava/lang/Enum;
.source "RunQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsistencySelectorCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

.field public static final enum CONSISTENCYSELECTOR_NOT_SET:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

.field public static final enum NEW_TRANSACTION:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

.field public static final enum READ_TIME:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

.field public static final enum TRANSACTION:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 65
    new-instance v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    const/4 v1, 0x5

    const-string v2, "TRANSACTION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->TRANSACTION:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    .line 66
    new-instance v1, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    const/4 v2, 0x1

    const/4 v4, 0x6

    const-string v5, "NEW_TRANSACTION"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->NEW_TRANSACTION:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    .line 67
    new-instance v2, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    const/4 v4, 0x2

    const/4 v5, 0x7

    const-string v6, "READ_TIME"

    invoke-direct {v2, v6, v4, v5}, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->READ_TIME:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    .line 68
    new-instance v4, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    const-string v5, "CONSISTENCYSELECTOR_NOT_SET"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->CONSISTENCYSELECTOR_NOT_SET:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    .line 64
    filled-new-array {v0, v1, v2, v4}, [Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->$VALUES:[Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->value:I

    .line 72
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;
    .locals 1
    .param p0, "value"    # I

    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 85
    :sswitch_0
    sget-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->READ_TIME:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    return-object v0

    .line 84
    :sswitch_1
    sget-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->NEW_TRANSACTION:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    return-object v0

    .line 83
    :sswitch_2
    sget-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->TRANSACTION:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    return-object v0

    .line 86
    :sswitch_3
    sget-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->CONSISTENCYSELECTOR_NOT_SET:Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;
    .locals 1

    .line 64
    sget-object v0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->$VALUES:[Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;->value:I

    return v0
.end method
