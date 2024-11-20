.class public Lcom/google/firebase/firestore/QuerySnapshot;
.super Ljava/lang/Object;
.source "QuerySnapshot.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/firestore/QueryDocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentChange;",
            ">;"
        }
    .end annotation
.end field

.field private cachedChangesMetadataState:Lcom/google/firebase/firestore/MetadataChanges;

.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

.field private final originalQuery:Lcom/google/firebase/firestore/Query;

.field private final snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 3
    .param p1, "originalQuery"    # Lcom/google/firebase/firestore/Query;
    .param p2, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .param p3, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/Query;

    iput-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->originalQuery:Lcom/google/firebase/firestore/Query;

    .line 52
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/ViewSnapshot;

    iput-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 53
    invoke-static {p3}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 54
    new-instance v0, Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hasPendingWrites()Z

    move-result v1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/SnapshotMetadata;-><init>(ZZ)V

    iput-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/QuerySnapshot;
    .param p1, "x1"    # Lcom/google/firebase/firestore/model/Document;

    .line 36
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/QuerySnapshot;->convertDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v0

    return-object v0
.end method

.method private convertDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .locals 4
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 190
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v1, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 193
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v1

    iget-object v2, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 194
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 190
    invoke-static {v0, p1, v1, v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 200
    return v0

    .line 202
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/QuerySnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 203
    return v2

    .line 205
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 206
    .local v1, "other":Lcom/google/firebase/firestore/QuerySnapshot;
    iget-object v3, p0, Lcom/google/firebase/firestore/QuerySnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v4, v1, Lcom/google/firebase/firestore/QuerySnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/QuerySnapshot;->originalQuery:Lcom/google/firebase/firestore/Query;

    iget-object v4, v1, Lcom/google/firebase/firestore/QuerySnapshot;->originalQuery:Lcom/google/firebase/firestore/Query;

    .line 207
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/Query;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    iget-object v4, v1, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 208
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/core/ViewSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/QuerySnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    iget-object v4, v1, Lcom/google/firebase/firestore/QuerySnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    .line 209
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/SnapshotMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 206
    :goto_0
    return v0
.end method

.method public getDocumentChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentChange;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocumentChanges(Lcom/google/firebase/firestore/MetadataChanges;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentChanges(Lcom/google/firebase/firestore/MetadataChanges;)Ljava/util/List;
    .locals 2
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentChange;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/MetadataChanges;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ViewSnapshot;->excludesMetadataChanges()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To include metadata changes with your document changes, you must also pass MetadataChanges.INCLUDE to addSnapshotListener()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->cachedChanges:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->cachedChangesMetadataState:Lcom/google/firebase/firestore/MetadataChanges;

    if-eq v0, p1, :cond_3

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v1, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 122
    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/DocumentChange;->changesFromSnapshot(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/core/ViewSnapshot;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->cachedChanges:Ljava/util/List;

    .line 123
    iput-object p1, p0, Lcom/google/firebase/firestore/QuerySnapshot;->cachedChangesMetadataState:Lcom/google/firebase/firestore/MetadataChanges;

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->cachedChanges:Ljava/util/List;

    return-object v0
.end method

.method public getDocuments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/DocumentSnapshot;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 137
    .local v2, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/QuerySnapshot;->convertDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "doc":Lcom/google/firebase/firestore/model/Document;
    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    return-object v0
.end method

.method public getQuery()Lcom/google/firebase/firestore/Query;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->originalQuery:Lcom/google/firebase/firestore/Query;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 215
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/QuerySnapshot;->originalQuery:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/Query;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 216
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 217
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/QuerySnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/SnapshotMetadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 218
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/firestore/QueryDocumentSnapshot;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;

    iget-object v1, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;-><init>(Lcom/google/firebase/firestore/QuerySnapshot;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v0

    return v0
.end method

.method public toObjects(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 166
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/QuerySnapshot;->toObjects(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toObjects(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/List;
    .locals 4
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 181
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Provided POJO type must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 184
    .local v2, "d":Lcom/google/firebase/firestore/DocumentSnapshot;
    invoke-virtual {v2, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v2    # "d":Lcom/google/firebase/firestore/DocumentSnapshot;
    goto :goto_0

    .line 186
    :cond_0
    return-object v0
.end method
