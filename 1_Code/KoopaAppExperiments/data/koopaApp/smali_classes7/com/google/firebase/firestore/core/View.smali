.class public Lcom/google/firebase/firestore/core/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/View$DocumentChanges;
    }
.end annotation


# instance fields
.field private current:Z

.field private documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

.field private limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lcom/google/firebase/firestore/core/Query;

.field private syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

.field private syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p2, "remoteDocuments":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    .line 98
    sget-object v0, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->NONE:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 99
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentSet;->emptySet(Ljava/util/Comparator;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 100
    iput-object p2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 101
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 102
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 103
    return-void
.end method

.method private applyTargetChange(Lcom/google/firebase/firestore/remote/TargetChange;)V
    .locals 5
    .param p1, "targetChange"    # Lcom/google/firebase/firestore/remote/TargetChange;

    .line 342
    if-eqz p1, :cond_3

    .line 343
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->getAddedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 344
    .local v1, "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 345
    .end local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->getModifiedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 347
    .restart local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 348
    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 347
    const-string v4, "Modified document %s not found in view."

    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 351
    .end local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->getRemovedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 353
    .restart local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 354
    .end local v1    # "documentKey":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_2

    .line 355
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/TargetChange;->isCurrent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    .line 357
    :cond_3
    return-void
.end method

.method private static changeTypeOrder(Lcom/google/firebase/firestore/core/DocumentViewChange;)I
    .locals 3
    .param p0, "change"    # Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 429
    sget-object v0, Lcom/google/firebase/firestore/core/View$1;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown change type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 438
    :pswitch_1
    return v1

    .line 433
    :pswitch_2
    return v1

    .line 431
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldBeLimboDoc(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 394
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 395
    return v1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/DocumentSet;->getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    .line 399
    .local v0, "doc":Lcom/google/firebase/firestore/model/Document;
    if-nez v0, :cond_1

    .line 400
    return v1

    .line 407
    :cond_1
    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    return v1

    .line 412
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldWaitForSyncedDocument(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)Z
    .locals 1
    .param p1, "oldDoc"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "newDoc"    # Lcom/google/firebase/firestore/model/Document;

    .line 253
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {p2}, Lcom/google/firebase/firestore/model/Document;->hasCommittedMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {p2}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0
.end method

.method private updateLimboDocuments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;"
        }
    .end annotation

    .line 361
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 368
    .local v0, "oldLimboDocs":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 369
    iget-object v1, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 370
    .local v2, "doc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/core/View;->shouldBeLimboDoc(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 373
    .end local v2    # "doc":Lcom/google/firebase/firestore/model/Document;
    :cond_1
    goto :goto_0

    .line 376
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 377
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 378
    .local v1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 379
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v4, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 380
    new-instance v4, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    sget-object v5, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange;-><init>(Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_3
    goto :goto_1

    .line 384
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 385
    .restart local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v0, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 386
    new-instance v4, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    sget-object v5, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-direct {v4, v5, v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange;-><init>(Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;Lcom/google/firebase/firestore/model/DocumentKey;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_5
    goto :goto_2

    .line 389
    :cond_6
    return-object v1
.end method


# virtual methods
.method public applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 1
    .param p1, "docChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v0

    return-object v0
.end method

.method public applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;Lcom/google/firebase/firestore/remote/TargetChange;)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 21
    .param p1, "docChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .param p2, "targetChange"    # Lcom/google/firebase/firestore/remote/TargetChange;

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lcom/google/firebase/firestore/core/View$DocumentChanges;->access$100(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "Cannot apply changes that need a refill"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v7}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v3, v0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 281
    .local v3, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    iget-object v5, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    iput-object v5, v0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 282
    iget-object v5, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iput-object v5, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 285
    iget-object v5, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->changeSet:Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->getChanges()Ljava/util/List;

    move-result-object v5

    .line 286
    .local v5, "viewChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/DocumentViewChange;>;"
    new-instance v7, Lcom/google/firebase/firestore/core/View$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/google/firebase/firestore/core/View$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/core/View;)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    invoke-direct {v0, v2}, Lcom/google/firebase/firestore/core/View;->applyTargetChange(Lcom/google/firebase/firestore/remote/TargetChange;)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/firestore/core/View;->updateLimboDocuments()Ljava/util/List;

    move-result-object v7

    .line 297
    .local v7, "limboDocumentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    iget-object v8, v0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v8}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->size()I

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, v0, Lcom/google/firebase/firestore/core/View;->current:Z

    if-eqz v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    move/from16 v18, v8

    .line 298
    .local v18, "synced":Z
    if-eqz v18, :cond_1

    sget-object v8, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->SYNCED:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->LOCAL:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    :goto_1
    move-object v15, v8

    .line 299
    .local v15, "newSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    iget-object v8, v0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    if-eq v15, v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    move/from16 v19, v8

    .line 300
    .local v19, "syncStatedChanged":Z
    iput-object v15, v0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    .line 301
    const/16 v20, 0x0

    .line 303
    .local v20, "snapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    if-eqz v19, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v15

    move-object/from16 v4, v20

    goto :goto_6

    .line 304
    :cond_4
    :goto_3
    sget-object v8, Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;->LOCAL:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    if-ne v15, v8, :cond_5

    move v13, v4

    goto :goto_4

    :cond_5
    move v13, v6

    .line 306
    .local v13, "fromCache":Z
    :goto_4
    if-nez v2, :cond_7

    :cond_6
    move/from16 v17, v6

    goto :goto_5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/remote/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move/from16 v17, v4

    .line 307
    .local v17, "hasCachedResults":Z
    :goto_5
    new-instance v4, Lcom/google/firebase/firestore/core/ViewSnapshot;

    iget-object v9, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v10, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    iget-object v14, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    const/16 v16, 0x0

    move-object v8, v4

    move-object v11, v3

    move-object v12, v5

    move-object v6, v15

    .end local v15    # "newSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    .local v6, "newSyncState":Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    move/from16 v15, v19

    invoke-direct/range {v8 .. v17}, Lcom/google/firebase/firestore/core/ViewSnapshot;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/model/DocumentSet;Ljava/util/List;ZLcom/google/firebase/database/collection/ImmutableSortedSet;ZZZ)V

    move-object/from16 v20, v4

    .line 319
    .end local v13    # "fromCache":Z
    .end local v17    # "hasCachedResults":Z
    .end local v20    # "snapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    .local v4, "snapshot":Lcom/google/firebase/firestore/core/ViewSnapshot;
    :goto_6
    new-instance v8, Lcom/google/firebase/firestore/core/ViewChange;

    invoke-direct {v8, v4, v7}, Lcom/google/firebase/firestore/core/ViewChange;-><init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Ljava/util/List;)V

    return-object v8
.end method

.method public applyOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)Lcom/google/firebase/firestore/core/ViewChange;
    .locals 7
    .param p1, "onlineState"    # Lcom/google/firebase/firestore/core/OnlineState;

    .line 327
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/firestore/core/OnlineState;->OFFLINE:Lcom/google/firebase/firestore/core/OnlineState;

    if-ne p1, v0, :cond_0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/core/View;->current:Z

    .line 332
    new-instance v0, Lcom/google/firebase/firestore/core/View$DocumentChanges;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    new-instance v3, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    invoke-direct {v3}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;-><init>()V

    iget-object v4, p0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/firestore/core/View$DocumentChanges;-><init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZLcom/google/firebase/firestore/core/View$1;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/core/View;->applyChanges(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/ViewChange;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/core/ViewChange;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/ViewChange;-><init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Ljava/util/List;)V

    return-object v0
.end method

.method public computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)",
            "Lcom/google/firebase/firestore/core/View$DocumentChanges;"
        }
    .end annotation

    .line 118
    .local p1, "docChanges":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/core/View;->computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/View$DocumentChanges;

    move-result-object v0

    return-object v0
.end method

.method public computeDocChanges(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/firestore/core/View$DocumentChanges;)Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .locals 20
    .param p2, "previousChanges"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/firestore/core/View$DocumentChanges;",
            ")",
            "Lcom/google/firebase/firestore/core/View$DocumentChanges;"
        }
    .end annotation

    .line 135
    .local p1, "docChanges":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->changeSet:Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    invoke-direct {v2}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;-><init>()V

    .line 137
    .local v2, "changeSet":Lcom/google/firebase/firestore/core/DocumentViewChangeSet;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/google/firebase/firestore/core/View;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    :goto_1
    move-object v9, v3

    .line 139
    .local v9, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 140
    .local v3, "newMutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    :goto_2
    move-object v4, v9

    .line 141
    .local v4, "newDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    const/4 v5, 0x0

    .line 152
    .local v5, "needsRefill":Z
    iget-object v6, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/core/Query$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v6

    int-to-long v10, v6

    iget-object v6, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Query;->getLimit()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-nez v6, :cond_3

    .line 153
    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/DocumentSet;->getLastDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v6

    goto :goto_3

    .line 154
    :cond_3
    const/4 v6, 0x0

    :goto_3
    move-object v10, v6

    .line 156
    .local v10, "lastDocInLimit":Lcom/google/firebase/firestore/model/Document;
    iget-object v6, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v6

    sget-object v8, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v6, v8}, Lcom/google/firebase/firestore/core/Query$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v6

    int-to-long v11, v6

    iget-object v6, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Query;->getLimit()J

    move-result-wide v13

    cmp-long v6, v11, v13

    if-nez v6, :cond_4

    .line 157
    invoke-virtual {v9}, Lcom/google/firebase/firestore/model/DocumentSet;->getFirstDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v6

    goto :goto_4

    .line 158
    :cond_4
    const/4 v6, 0x0

    :goto_4
    move-object v11, v6

    .line 160
    .local v11, "firstDocInLimit":Lcom/google/firebase/firestore/model/Document;
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v12, v5

    .end local v5    # "needsRefill":Z
    .local v12, "needsRefill":Z
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 161
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 162
    .local v14, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v9, v14}, Lcom/google/firebase/firestore/model/DocumentSet;->getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v15

    .line 163
    .local v15, "oldDoc":Lcom/google/firebase/firestore/model/Document;
    iget-object v7, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/core/Query;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/model/Document;

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    .line 165
    .local v7, "newDoc":Lcom/google/firebase/firestore/model/Document;
    :goto_6
    if-eqz v15, :cond_6

    iget-object v8, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 166
    invoke-interface {v15}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    .line 170
    .local v8, "oldDocHadPendingMutations":Z
    :goto_7
    if-eqz v7, :cond_8

    .line 172
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v0, Lcom/google/firebase/firestore/core/View;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 173
    move-object/from16 v17, v5

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 174
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->hasCommittedMutations()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_8

    .line 172
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :cond_7
    move-object/from16 v17, v5

    .line 174
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :goto_8
    const/16 v16, 0x1

    goto :goto_9

    .line 170
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :cond_8
    move-object/from16 v17, v5

    .line 174
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .restart local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :cond_9
    const/16 v16, 0x0

    :goto_9
    move/from16 v5, v16

    .line 176
    .local v5, "newDocHasPendingMutations":Z
    const/4 v13, 0x0

    .line 179
    .local v13, "changeApplied":Z
    if-eqz v15, :cond_f

    if-eqz v7, :cond_f

    .line 180
    move-object/from16 v18, v6

    invoke-interface {v15}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v6

    move-object/from16 v19, v9

    .end local v9    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .local v19, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/firebase/firestore/model/ObjectValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 181
    .local v6, "docsEqual":Z
    if-nez v6, :cond_d

    .line 182
    invoke-direct {v0, v15, v7}, Lcom/google/firebase/firestore/core/View;->shouldWaitForSyncedDocument(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 183
    sget-object v9, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v9, v7}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 184
    const/4 v9, 0x1

    .line 186
    .end local v13    # "changeApplied":Z
    .local v9, "changeApplied":Z
    if-eqz v10, :cond_a

    iget-object v13, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v13}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v13

    invoke-interface {v13, v7, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-gtz v13, :cond_b

    :cond_a
    if-eqz v11, :cond_c

    iget-object v13, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    .line 188
    invoke-virtual {v13}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v13

    invoke-interface {v13, v7, v11}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_c

    .line 191
    :cond_b
    const/4 v12, 0x1

    move v13, v9

    goto :goto_a

    .line 198
    .end local v6    # "docsEqual":Z
    :cond_c
    move v13, v9

    goto :goto_a

    .line 194
    .end local v9    # "changeApplied":Z
    .restart local v6    # "docsEqual":Z
    .restart local v13    # "changeApplied":Z
    :cond_d
    if-eq v8, v5, :cond_e

    .line 195
    sget-object v9, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v9, v7}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 196
    const/4 v9, 0x1

    move v13, v9

    .line 198
    .end local v6    # "docsEqual":Z
    :cond_e
    :goto_a
    goto :goto_b

    .line 179
    .end local v19    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .local v9, "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :cond_f
    move-object/from16 v18, v6

    move-object/from16 v19, v9

    .line 198
    .end local v9    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v19    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    if-nez v15, :cond_10

    if-eqz v7, :cond_10

    .line 199
    sget-object v6, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v6, v7}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 200
    const/4 v13, 0x1

    goto :goto_b

    .line 201
    :cond_10
    if-eqz v15, :cond_12

    if-nez v7, :cond_12

    .line 202
    sget-object v6, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v6, v15}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 203
    const/4 v13, 0x1

    .line 204
    if-nez v10, :cond_11

    if-eqz v11, :cond_12

    .line 207
    :cond_11
    const/4 v6, 0x1

    move v12, v6

    .line 211
    :cond_12
    :goto_b
    if-eqz v13, :cond_15

    .line 212
    if-eqz v7, :cond_14

    .line 213
    invoke-virtual {v4, v7}, Lcom/google/firebase/firestore/model/DocumentSet;->add(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 214
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->hasLocalMutations()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 215
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    goto :goto_c

    .line 217
    :cond_13
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    goto :goto_c

    .line 220
    :cond_14
    invoke-virtual {v4, v14}, Lcom/google/firebase/firestore/model/DocumentSet;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 221
    invoke-virtual {v3, v14}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 224
    .end local v5    # "newDocHasPendingMutations":Z
    .end local v7    # "newDoc":Lcom/google/firebase/firestore/model/Document;
    .end local v8    # "oldDocHadPendingMutations":Z
    .end local v13    # "changeApplied":Z
    .end local v14    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v15    # "oldDoc":Lcom/google/firebase/firestore/model/Document;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    :cond_15
    :goto_c
    move-object/from16 v6, v18

    move-object/from16 v9, v19

    goto/16 :goto_5

    .line 227
    .end local v19    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v9    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :cond_16
    move-object/from16 v19, v9

    .end local v9    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .restart local v19    # "oldDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    iget-object v5, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/Query;->hasLimit()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 228
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/Query;->getLimit()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .local v5, "i":J
    :goto_d
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_18

    .line 230
    iget-object v7, v0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v7, v8}, Lcom/google/firebase/firestore/core/Query$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 231
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->getLastDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v7

    goto :goto_e

    .line 232
    :cond_17
    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentSet;->getFirstDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v7

    :goto_e
    nop

    .line 233
    .local v7, "oldDoc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/firebase/firestore/model/DocumentSet;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v4

    .line 234
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 235
    sget-object v8, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v8, v7}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V

    .line 228
    .end local v7    # "oldDoc":Lcom/google/firebase/firestore/model/Document;
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    goto :goto_d

    :cond_18
    move-object v9, v3

    move-object v13, v4

    goto :goto_f

    .line 227
    .end local v5    # "i":J
    :cond_19
    move-object v9, v3

    move-object v13, v4

    .line 239
    .end local v3    # "newMutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .end local v4    # "newDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .local v9, "newMutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .local v13, "newDocumentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    :goto_f
    if-eqz v12, :cond_1b

    if-nez v1, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v8, 0x0

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v8, 0x1

    :goto_11
    const-string v3, "View was refilled using docs that themselves needed refilling."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v14, Lcom/google/firebase/firestore/core/View$DocumentChanges;

    const/4 v8, 0x0

    move-object v3, v14

    move-object v4, v13

    move-object v5, v2

    move-object v6, v9

    move v7, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/firestore/core/View$DocumentChanges;-><init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZLcom/google/firebase/firestore/core/View$1;)V

    return-object v14
.end method

.method getLimboDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->limboDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getSyncState()Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncState:Lcom/google/firebase/firestore/core/ViewSnapshot$SyncState;

    return-object v0
.end method

.method getSyncedDocuments()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/firebase/firestore/core/View;->syncedDocuments:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method synthetic lambda$applyChanges$0$com-google-firebase-firestore-core-View(Lcom/google/firebase/firestore/core/DocumentViewChange;Lcom/google/firebase/firestore/core/DocumentViewChange;)I
    .locals 4
    .param p1, "o1"    # Lcom/google/firebase/firestore/core/DocumentViewChange;
    .param p2, "o2"    # Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 289
    invoke-static {p1}, Lcom/google/firebase/firestore/core/View;->changeTypeOrder(Lcom/google/firebase/firestore/core/DocumentViewChange;)I

    move-result v0

    invoke-static {p2}, Lcom/google/firebase/firestore/core/View;->changeTypeOrder(Lcom/google/firebase/firestore/core/DocumentViewChange;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v0

    .line 290
    .local v0, "typeComp":I
    if-eqz v0, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/View;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
