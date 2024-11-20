.class public final enum Lcom/google/firebase/firestore/core/OnlineState;
.super Ljava/lang/Enum;
.source "OnlineState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/OnlineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/OnlineState;

.field public static final enum OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

.field public static final enum ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

.field public static final enum UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/google/firebase/firestore/core/OnlineState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/OnlineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/OnlineState;->UNKNOWN:Lcom/google/firebase/firestore/core/OnlineState;

    .line 38
    new-instance v1, Lcom/google/firebase/firestore/core/OnlineState;

    const-string v2, "ONLINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/OnlineState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/core/OnlineState;->ONLINE:Lcom/google/firebase/firestore/core/OnlineState;

    .line 45
    new-instance v2, Lcom/google/firebase/firestore/core/OnlineState;

    const-string v3, "OFFLINE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/core/OnlineState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    .line 23
    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/core/OnlineState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/OnlineState;->$VALUES:[Lcom/google/firebase/firestore/core/OnlineState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/OnlineState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/google/firebase/firestore/core/OnlineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/OnlineState;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/OnlineState;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->$VALUES:[Lcom/google/firebase/firestore/core/OnlineState;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/OnlineState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/OnlineState;

    return-object v0
.end method
