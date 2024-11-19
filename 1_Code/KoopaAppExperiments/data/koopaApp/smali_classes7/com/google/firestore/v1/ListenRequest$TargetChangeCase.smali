.class public final enum Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
.super Ljava/lang/Enum;
.source "ListenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetChangeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

.field public static final enum ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

.field public static final enum REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

.field public static final enum TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    const-string v1, "ADD_TARGET"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    .line 25
    new-instance v1, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "REMOVE_TARGET"

    invoke-direct {v1, v6, v4, v5}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    .line 26
    new-instance v4, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    const-string v5, "TARGETCHANGE_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    .line 23
    filled-new-array {v0, v1, v4}, [Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    move-result-object v0

    sput-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->$VALUES:[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->value:I

    .line 30
    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1
    .param p0, "value"    # I

    .line 40
    packed-switch p0, :pswitch_data_0

    .line 44
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object v0

    .line 41
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object v0

    .line 43
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->forNumber(I)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->$VALUES:[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->value:I

    return v0
.end method
