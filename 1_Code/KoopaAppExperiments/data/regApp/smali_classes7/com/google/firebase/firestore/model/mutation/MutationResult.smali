.class public final Lcom/google/firebase/firestore/model/mutation/MutationResult;
.super Ljava/lang/Object;
.source "MutationResult.java"


# instance fields
.field private final transformResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/List;)V
    .locals 1
    .param p1, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p2, "transformResults":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationResult;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/MutationResult;->transformResults:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public getTransformResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationResult;->transformResults:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/MutationResult;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method
