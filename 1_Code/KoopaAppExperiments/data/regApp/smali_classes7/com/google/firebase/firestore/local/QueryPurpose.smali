.class public final enum Lcom/google/firebase/firestore/local/QueryPurpose;
.super Ljava/lang/Enum;
.source "QueryPurpose.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/local/QueryPurpose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum EXISTENCE_FILTER_MISMATCH_BLOOM:Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

.field public static final enum LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    const-string v1, "LISTEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->LISTEN:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 23
    new-instance v1, Lcom/google/firebase/firestore/local/QueryPurpose;

    const-string v2, "EXISTENCE_FILTER_MISMATCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 28
    new-instance v2, Lcom/google/firebase/firestore/local/QueryPurpose;

    const-string v3, "EXISTENCE_FILTER_MISMATCH_BLOOM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/local/QueryPurpose;->EXISTENCE_FILTER_MISMATCH_BLOOM:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 31
    new-instance v3, Lcom/google/firebase/firestore/local/QueryPurpose;

    const-string v4, "LIMBO_RESOLUTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/local/QueryPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/firestore/local/QueryPurpose;->LIMBO_RESOLUTION:Lcom/google/firebase/firestore/local/QueryPurpose;

    .line 18
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/firestore/local/QueryPurpose;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->$VALUES:[Lcom/google/firebase/firestore/local/QueryPurpose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/local/QueryPurpose;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/QueryPurpose;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/local/QueryPurpose;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/firebase/firestore/local/QueryPurpose;->$VALUES:[Lcom/google/firebase/firestore/local/QueryPurpose;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/local/QueryPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/local/QueryPurpose;

    return-object v0
.end method
