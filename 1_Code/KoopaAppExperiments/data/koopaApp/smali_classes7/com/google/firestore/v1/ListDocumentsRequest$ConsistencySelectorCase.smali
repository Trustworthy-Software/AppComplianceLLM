.class public final enum Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
.super Ljava/lang/Enum;
.source "ListDocumentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListDocumentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsistencySelectorCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

.field public static final enum CONSISTENCYSELECTOR_NOT_SET:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

.field public static final enum READ_TIME:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

.field public static final enum TRANSACTION:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    const/16 v1, 0x8

    const-string v2, "TRANSACTION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->TRANSACTION:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    .line 28
    new-instance v1, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    const/4 v2, 0x1

    const/16 v4, 0xa

    const-string v5, "READ_TIME"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->READ_TIME:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    .line 29
    new-instance v2, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    const-string v4, "CONSISTENCYSELECTOR_NOT_SET"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->CONSISTENCYSELECTOR_NOT_SET:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    .line 26
    filled-new-array {v0, v1, v2}, [Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->$VALUES:[Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->value:I

    .line 33
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1
    .param p0, "value"    # I

    .line 43
    sparse-switch p0, :sswitch_data_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 45
    :sswitch_0
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->READ_TIME:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    return-object v0

    .line 44
    :sswitch_1
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->TRANSACTION:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    return-object v0

    .line 46
    :sswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->CONSISTENCYSELECTOR_NOT_SET:Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->$VALUES:[Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->value:I

    return v0
.end method
