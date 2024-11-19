.class Lcom/google/firebase/database/core/SyncTree$13;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field final synthetic val$skipListenerSetup:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/EventRegistration;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 550
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$13;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-boolean p3, p0, Lcom/google/firebase/database/core/SyncTree$13;->val$skipListenerSetup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$13;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$13;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    .line 554
    .local v0, "query":Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 556
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    const/4 v2, 0x0

    .line 557
    .local v2, "serverCacheNode":Lcom/google/firebase/database/snapshot/Node;
    const/4 v3, 0x0

    .line 563
    .local v3, "foundAncestorDefaultView":Z
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v4}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    .line 564
    .local v4, "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    move-object v5, v1

    .line 565
    .local v5, "currentPath":Lcom/google/firebase/database/core/Path;
    :goto_0
    invoke-virtual {v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_5

    .line 566
    invoke-virtual {v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/SyncPoint;

    .line 567
    .local v6, "currentSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    if-eqz v6, :cond_3

    .line 569
    if-eqz v2, :cond_0

    .line 570
    move-object v9, v2

    goto :goto_1

    .line 571
    :cond_0
    invoke-virtual {v6, v5}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    :goto_1
    move-object v2, v9

    .line 572
    if-nez v3, :cond_2

    .line 573
    invoke-virtual {v6}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    move v7, v8

    goto :goto_3

    :cond_2
    :goto_2
    nop

    :goto_3
    move v3, v7

    .line 576
    :cond_3
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-static {v7}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    .line 577
    .local v7, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    :goto_4
    invoke-virtual {v4, v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    .line 578
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    .line 579
    .end local v6    # "currentSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .end local v7    # "front":Lcom/google/firebase/database/snapshot/ChildKey;
    goto :goto_0

    .line 582
    .end local v4    # "tree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v5    # "currentPath":Lcom/google/firebase/database/core/Path;
    :cond_5
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v4}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/SyncPoint;

    .line 583
    .local v4, "syncPoint":Lcom/google/firebase/database/core/SyncPoint;
    if-nez v4, :cond_6

    .line 584
    new-instance v5, Lcom/google/firebase/database/core/SyncPoint;

    iget-object v6, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v6}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/firebase/database/core/SyncPoint;-><init>(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V

    move-object v4, v5

    .line 585
    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/firebase/database/core/SyncTree;->access$602(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    goto :goto_8

    .line 587
    :cond_6
    if-nez v3, :cond_8

    invoke-virtual {v4}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move v5, v8

    goto :goto_6

    :cond_8
    :goto_5
    move v5, v7

    :goto_6
    move v3, v5

    .line 589
    if-eqz v2, :cond_9

    .line 590
    move-object v5, v2

    goto :goto_7

    .line 591
    :cond_9
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    :goto_7
    move-object v2, v5

    .line 594
    :goto_8
    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 597
    if-eqz v2, :cond_a

    .line 598
    new-instance v5, Lcom/google/firebase/database/core/view/CacheNode;

    .line 599
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    invoke-direct {v5, v6, v7, v8}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .local v5, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    goto/16 :goto_b

    .line 602
    .end local v5    # "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    :cond_a
    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->serverCache(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v5

    .line 603
    .local v5, "persistentServerCache":Lcom/google/firebase/database/core/view/CacheNode;
    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 604
    move-object v6, v5

    .local v6, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    goto/16 :goto_b

    .line 606
    .end local v6    # "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    :cond_b
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v2

    .line 607
    iget-object v6, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v6}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    .line 608
    .local v6, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    invoke-virtual {v6}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 609
    .local v10, "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/database/core/SyncPoint;

    .line 610
    .local v11, "childSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    if-eqz v11, :cond_c

    .line 611
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    .line 612
    .local v12, "completeCache":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v12, :cond_c

    .line 613
    nop

    .line 614
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v2, v13, v12}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 617
    .end local v10    # "child":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;>;"
    .end local v11    # "childSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .end local v12    # "completeCache":Lcom/google/firebase/database/snapshot/Node;
    :cond_c
    goto :goto_9

    .line 619
    :cond_d
    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 620
    .local v10, "child":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-virtual {v10}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 621
    nop

    .line 622
    invoke-virtual {v10}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 624
    .end local v10    # "child":Lcom/google/firebase/database/snapshot/NamedNode;
    :cond_e
    goto :goto_a

    .line 625
    :cond_f
    new-instance v9, Lcom/google/firebase/database/core/view/CacheNode;

    .line 627
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v10

    invoke-direct {v9, v10, v8, v8}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    move-object v8, v9

    move-object v5, v8

    .line 631
    .end local v6    # "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .local v5, "serverCache":Lcom/google/firebase/database/core/view/CacheNode;
    :goto_b
    invoke-virtual {v4, v0}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v6

    .line 632
    .local v6, "viewAlreadyExists":Z
    if-nez v6, :cond_10

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v8

    if-nez v8, :cond_10

    .line 634
    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 635
    invoke-static {v8}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v7, v8

    .line 634
    const-string v8, "View does not exist but we have a tag"

    invoke-static {v7, v8}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 636
    iget-object v7, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v7}, Lcom/google/firebase/database/core/SyncTree;->access$800(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/Tag;

    move-result-object v7

    .line 637
    .local v7, "tag":Lcom/google/firebase/database/core/Tag;
    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v8}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v8}, Lcom/google/firebase/database/core/SyncTree;->access$900(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v7    # "tag":Lcom/google/firebase/database/core/Tag;
    :cond_10
    iget-object v7, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v7}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/firebase/database/core/WriteTree;->childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v7

    .line 641
    .local v7, "writesCache":Lcom/google/firebase/database/core/WriteTreeRef;
    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$13;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    .line 642
    invoke-virtual {v4, v8, v7, v5}, Lcom/google/firebase/database/core/SyncPoint;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Ljava/util/List;

    move-result-object v8

    .line 643
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    if-nez v6, :cond_11

    if-nez v3, :cond_11

    iget-boolean v9, p0, Lcom/google/firebase/database/core/SyncTree$13;->val$skipListenerSetup:Z

    if-nez v9, :cond_11

    .line 644
    invoke-virtual {v4, v0}, Lcom/google/firebase/database/core/SyncPoint;->viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;

    move-result-object v9

    .line 645
    .local v9, "view":Lcom/google/firebase/database/core/view/View;
    iget-object v10, p0, Lcom/google/firebase/database/core/SyncTree$13;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v10, v0, v9}, Lcom/google/firebase/database/core/SyncTree;->access$1000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V

    .line 647
    .end local v9    # "view":Lcom/google/firebase/database/core/view/View;
    :cond_11
    return-object v8
.end method
