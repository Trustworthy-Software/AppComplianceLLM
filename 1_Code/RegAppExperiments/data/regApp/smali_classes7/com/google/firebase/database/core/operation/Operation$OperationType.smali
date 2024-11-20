.class public final enum Lcom/google/firebase/database/core/operation/Operation$OperationType;
.super Ljava/lang/Enum;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/operation/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/database/core/operation/Operation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum AckUserWrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

.field public static final enum Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const-string v1, "Overwrite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Overwrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    .line 24
    new-instance v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const-string v2, "Merge"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    .line 25
    new-instance v2, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const-string v3, "AckUserWrite"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/database/core/operation/Operation$OperationType;->AckUserWrite:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    .line 26
    new-instance v3, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    const-string v4, "ListenComplete"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/core/operation/Operation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ListenComplete:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    .line 22
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->$VALUES:[Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/database/core/operation/Operation$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/database/core/operation/Operation$OperationType;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/database/core/operation/Operation$OperationType;->$VALUES:[Lcom/google/firebase/database/core/operation/Operation$OperationType;

    invoke-virtual {v0}, [Lcom/google/firebase/database/core/operation/Operation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/core/operation/Operation$OperationType;

    return-object v0
.end method
