.class public final Lcom/google/firebase/firestore/remote/RemoteEvent;
.super Ljava/lang/Object;
.source "RemoteEvent.java"


# instance fields
.field private final documentUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final resolvedLimboDocuments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final targetChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/remote/TargetChange;",
            ">;"
        }
    .end annotation
.end field

.field private final targetMismatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/local/QueryPurpose;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .param p1, "snapshotVersion"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/remote/TargetChange;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/local/QueryPurpose;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "targetChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/remote/TargetChange;>;"
    .local p3, "targetMismatches":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/firebase/firestore/local/QueryPurpose;>;"
    .local p4, "documentUpdates":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .local p5, "resolvedLimboDocuments":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->targetChanges:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->targetMismatches:Ljava/util/Map;

    .line 44
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->documentUpdates:Ljava/util/Map;

    .line 45
    iput-object p5, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->resolvedLimboDocuments:Ljava/util/Set;

    .line 46
    return-void
.end method


# virtual methods
.method public getDocumentUpdates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->documentUpdates:Ljava/util/Map;

    return-object v0
.end method

.method public getResolvedLimboDocuments()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->resolvedLimboDocuments:Ljava/util/Set;

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getTargetChanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/remote/TargetChange;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->targetChanges:Ljava/util/Map;

    return-object v0
.end method

.method public getTargetMismatches()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/firestore/local/QueryPurpose;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->targetMismatches:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteEvent{snapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->snapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->targetChanges:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetMismatches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->targetMismatches:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->documentUpdates:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolvedLimboDocuments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/RemoteEvent;->resolvedLimboDocuments:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
