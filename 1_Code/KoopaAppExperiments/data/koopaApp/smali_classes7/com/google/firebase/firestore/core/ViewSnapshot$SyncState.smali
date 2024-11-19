.class public final enum Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
.super Ljava/lang/Enum;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/ViewSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

.field public static final enum LOCAL:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

.field public static final enum NONE:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

.field public static final enum SYNCED:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->NONE:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 30
    new-instance v1, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    const-string v2, "LOCAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->LOCAL:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 31
    new-instance v2, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    const-string v3, "SYNCED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->SYNCED:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 28
    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->$VALUES:[Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->$VALUES:[Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    return-object v0
.end method
