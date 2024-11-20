.class final enum Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
.super Ljava/lang/Enum;
.source "WatchChangeAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchChangeAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BloomFilterApplicationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

.field public static final enum FALSE_POSITIVE:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

.field public static final enum SKIPPED:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

.field public static final enum SUCCESS:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    new-instance v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->SUCCESS:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    .line 90
    new-instance v1, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    const-string v2, "SKIPPED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->SKIPPED:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    .line 91
    new-instance v2, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    const-string v3, "FALSE_POSITIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->FALSE_POSITIVE:Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    .line 88
    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->$VALUES:[Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    const-class v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;
    .locals 1

    .line 88
    sget-object v0, Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->$VALUES:[Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/remote/WatchChangeAggregator$BloomFilterApplicationStatus;

    return-object v0
.end method
