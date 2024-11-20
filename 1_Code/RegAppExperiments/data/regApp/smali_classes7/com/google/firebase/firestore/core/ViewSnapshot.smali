.class public Lcom/google/firebase/firestore/core/ViewSnapshot;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    }
.end annotation


# instance fields
.field private final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/DocumentViewChange;",
            ">;"
        }
    .end annotation
.end field

.field private final didSyncStateChange:Z

.field private final documents:Lcom/google/firebase/firestore/model/DocumentSet;

.field private excludesMetadataChanges:Z

.field private hasCachedResults:Z

.field private final isFromCache:Z

.field private final mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

.field private final query:Lcom/google/firebase/firestore/core/Query;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/model/DocumentSet;Ljava/util/List;ZLcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "documents"    # Lcom/google/firebase/firestore/model/DocumentSet;
    .param p3, "oldDocuments"    # Lcom/google/firebase/firestore/model/DocumentSet;
    .param p5, "isFromCache"    # Z
    .param p7, "didSyncStateChange"    # Z
    .param p8, "excludesMetadataChanges"    # Z
    .param p9, "hasCachedResults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/DocumentSet;",
            "Lcom/google/firebase/firestore/model/DocumentSet;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/DocumentViewChange;",
            ">;Z",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 53
    .local p4, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    .local p6, "mutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->query:Lcom/google/firebase/firestore/core/Query;

    .line 55
    iput-object p2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->documents:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 56
    iput-object p3, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 57
    iput-object p4, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->changes:Ljava/util/List;

    .line 58
    iput-boolean p5, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache:Z

    .line 59
    iput-object p6, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 60
    iput-boolean p7, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange:Z

    .line 61
    iput-boolean p8, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges:Z

    .line 62
    iput-boolean p9, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults:Z

    .line 63
    return-void
.end method

.method public static fromInitialDocuments(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 12
    .param p0, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p1, "documents"    # Lcom/google/firebase/firestore/model/DocumentSet;
    .param p3, "fromCache"    # Z
    .param p4, "excludesMetadataChanges"    # Z
    .param p5, "hasCachedResults"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/DocumentSet;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;ZZZ)",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;"
        }
    .end annotation

    .line 73
    .local p2, "mutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "viewChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 75
    .local v2, "doc":Lcom/google/firebase/firestore/model/Document;
    sget-object v3, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v3, v2}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "doc":Lcom/google/firebase/firestore/model/Document;
    goto :goto_0

    .line 77
    :cond_0
    new-instance v11, Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 80
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentSet;->emptySet(Ljava/util/Comparator;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    const/4 v8, 0x1

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    move v6, p3

    move-object v7, p2

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/firestore/core/ViewSnapshot;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/model/DocumentSet;Ljava/util/List;ZLcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)V

    .line 77
    return-object v11
.end method


# virtual methods
.method public didSyncStateChange()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 131
    if-ne p0, p1, :cond_0

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/core/ViewSnapshot;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 135
    return v1

    .line 138
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 140
    .local v0, "that":Lcom/google/firebase/firestore/core/ViewSnapshot;
    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache:Z

    iget-boolean v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache:Z

    if-eq v2, v3, :cond_2

    .line 141
    return v1

    .line 143
    :cond_2
    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange:Z

    iget-boolean v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange:Z

    if-eq v2, v3, :cond_3

    .line 144
    return v1

    .line 146
    :cond_3
    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges:Z

    iget-boolean v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges:Z

    if-eq v2, v3, :cond_4

    .line 147
    return v1

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/Query;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 150
    return v1

    .line 152
    :cond_5
    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iget-object v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 153
    return v1

    .line 155
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->documents:Lcom/google/firebase/firestore/model/DocumentSet;

    iget-object v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->documents:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 156
    return v1

    .line 158
    :cond_7
    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

    iget-object v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 159
    return v1

    .line 161
    :cond_8
    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults:Z

    iget-boolean v3, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults:Z

    if-eq v2, v3, :cond_9

    .line 162
    return v1

    .line 164
    :cond_9
    iget-object v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->changes:Ljava/util/List;

    iget-object v2, v0, Lcom/google/firebase/firestore/core/ViewSnapshot;->changes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public excludesMetadataChanges()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges:Z

    return v0
.end method

.method public getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/DocumentViewChange;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->changes:Ljava/util/List;

    return-object v0
.end method

.method public getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->documents:Lcom/google/firebase/firestore/model/DocumentSet;

    return-object v0
.end method

.method public getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getOldDocuments()Lcom/google/firebase/firestore/model/DocumentSet;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

    return-object v0
.end method

.method public getQuery()Lcom/google/firebase/firestore/core/Query;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->query:Lcom/google/firebase/firestore/core/Query;

    return-object v0
.end method

.method public hasCachedResults()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults:Z

    return v0
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->hashCode()I

    move-result v0

    .line 170
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->documents:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 171
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 172
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->changes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 173
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 174
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache:Z

    add-int/2addr v1, v2

    .line 175
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange:Z

    add-int/2addr v0, v2

    .line 176
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges:Z

    add-int/2addr v1, v2

    .line 177
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults:Z

    add-int/2addr v0, v2

    .line 178
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewSnapshot("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->documents:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->oldDocuments:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->changes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mutatedKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 194
    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", didSyncStateChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->didSyncStateChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excludesMetadataChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasCachedResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasCachedResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method
