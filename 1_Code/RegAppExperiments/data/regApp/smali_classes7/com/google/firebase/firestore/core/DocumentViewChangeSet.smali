.class public Lcom/google/firebase/firestore/core/DocumentViewChangeSet;
.super Ljava/lang/Object;
.source "DocumentViewChangeSet.java"


# instance fields
.field private final changes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/core/DocumentViewChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    .line 32
    return-void
.end method


# virtual methods
.method public addChange(Lcom/google/firebase/firestore/core/DocumentViewChange;)V
    .locals 6
    .param p1, "change"    # Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 35
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 36
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 37
    .local v1, "old":Lcom/google/firebase/firestore/core/DocumentViewChange;
    if-nez v1, :cond_0

    .line 38
    iget-object v2, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v2

    .line 43
    .local v2, "oldType":Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v3

    .line 44
    .local v3, "newType":Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v2, v4, :cond_1

    .line 45
    iget-object v4, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v4, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 46
    :cond_1
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v3, v4, :cond_2

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-eq v2, v4, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v4

    .line 48
    .local v4, "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    iget-object v5, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    goto/16 :goto_0

    :cond_2
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v3, v4, :cond_3

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v2, v4, :cond_3

    .line 50
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v4

    .line 51
    .restart local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    iget-object v5, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    goto :goto_0

    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v3, v4, :cond_4

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v2, v4, :cond_4

    .line 53
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v4

    .line 54
    .restart local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    iget-object v5, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .end local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    goto :goto_0

    :cond_4
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v3, v4, :cond_5

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v2, v4, :cond_5

    .line 56
    iget-object v4, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_5
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v3, v4, :cond_6

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v2, v4, :cond_6

    .line 58
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v4

    .line 59
    .restart local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    iget-object v5, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    goto :goto_0

    :cond_6
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v3, v4, :cond_7

    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v2, v4, :cond_7

    .line 61
    sget-object v4, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/core/DocumentViewChange;->create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-result-object v4

    .line 62
    .restart local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    iget-object v5, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v4    # "newChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    nop

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_7
    const-string v4, "Unsupported combination of changes %s after %s"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v4

    throw v4
.end method

.method getChanges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/DocumentViewChange;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DocumentViewChangeSet;->changes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
