.class Lcom/google/firebase/database/core/SyncTree$14;
.super Ljava/lang/Object;
.source "SyncTree.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)Ljava/util/List;
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
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$cancelError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;

.field final synthetic val$skipDedup:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/SyncTree;

    .line 684
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    iput-boolean p5, p0, Lcom/google/firebase/database/core/SyncTree$14;->val$skipDedup:Z

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

    .line 684
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$14;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 689
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    iget-object v2, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v2}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/SyncPoint;

    .line 690
    .local v2, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v3, "cancelEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    if-eqz v2, :cond_12

    iget-object v4, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 696
    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_e

    .line 699
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v5, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iget-object v6, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    .line 700
    invoke-virtual {v2, v4, v5, v6}, Lcom/google/firebase/database/core/SyncPoint;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v4

    .line 701
    .local v4, "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    invoke-virtual {v2}, Lcom/google/firebase/database/core/SyncPoint;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 702
    iget-object v5, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/firebase/database/core/SyncTree;->access$602(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 705
    :cond_2
    invoke-virtual {v4}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 706
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    invoke-virtual {v4}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 713
    const/4 v6, 0x0

    .line 714
    .local v6, "removingDefault":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 715
    .local v8, "queryRemoved":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v11, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v11}, Lcom/google/firebase/database/core/SyncTree;->access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v11

    iget-object v12, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-interface {v11, v12}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 716
    if-nez v6, :cond_4

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 717
    .end local v8    # "queryRemoved":Lcom/google/firebase/database/core/view/QuerySpec;
    goto :goto_1

    .line 734
    :cond_5
    iget-boolean v7, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$skipDedup:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 735
    return-object v8

    .line 737
    :cond_6
    iget-object v7, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v7}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    .line 738
    .local v7, "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    nop

    .line 739
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v11}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    .line 740
    .local v11, "covered":Z
    :goto_4
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 741
    .local v13, "component":Lcom/google/firebase/database/snapshot/ChildKey;
    invoke-virtual {v7, v13}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v7

    .line 742
    if-nez v11, :cond_9

    .line 744
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 745
    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v14}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v14, 0x1

    :goto_7
    move v11, v14

    .line 746
    if-nez v11, :cond_b

    invoke-virtual {v7}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 747
    goto :goto_8

    .line 749
    .end local v13    # "component":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_a
    goto :goto_5

    .line 751
    :cond_b
    :goto_8
    if-eqz v6, :cond_e

    if-nez v11, :cond_e

    .line 752
    iget-object v12, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v12}, Lcom/google/firebase/database/core/SyncTree;->access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v12

    .line 755
    .local v12, "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    invoke-virtual {v12}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    .line 757
    iget-object v13, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v13, v12}, Lcom/google/firebase/database/core/SyncTree;->access$1100(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v13

    .line 760
    .local v13, "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/firebase/database/core/view/View;

    .line 761
    .local v15, "view":Lcom/google/firebase/database/core/view/View;
    new-instance v9, Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    iget-object v10, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {v9, v10, v15}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V

    .line 762
    .local v9, "container":Lcom/google/firebase/database/core/SyncTree$ListenContainer;
    invoke-virtual {v15}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v10

    .line 763
    .local v10, "newQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v8, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v8}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v8

    move-object/from16 v16, v1

    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .local v16, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 764
    invoke-static {v1, v10}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    move-object/from16 v17, v2

    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .local v17, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    invoke-static {v9}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->access$1300(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;

    move-result-object v2

    .line 763
    invoke-interface {v8, v1, v2, v9, v9}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    .line 765
    .end local v9    # "container":Lcom/google/firebase/database/core/SyncTree$ListenContainer;
    .end local v10    # "newQuery":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v15    # "view":Lcom/google/firebase/database/core/view/View;
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    const/4 v8, 0x0

    goto :goto_9

    .line 760
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_c
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    goto :goto_a

    .line 755
    .end local v13    # "newViews":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/View;>;"
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_d
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    goto :goto_a

    .line 751
    .end local v12    # "subtree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_e
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 775
    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :goto_a
    if-nez v11, :cond_11

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    if-nez v1, :cond_11

    .line 779
    if-eqz v6, :cond_f

    .line 780
    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v8, v0, Lcom/google/firebase/database/core/SyncTree$14;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-static {v2, v8}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v1, v2, v8}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_d

    .line 782
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 783
    .local v2, "queryToRemove":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v8, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v8, v2}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v8

    .line 784
    .local v8, "tag":Lcom/google/firebase/database/core/Tag;
    if-eqz v8, :cond_10

    const/4 v9, 0x1

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    :goto_c
    invoke-static {v9}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 785
    iget-object v9, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v9}, Lcom/google/firebase/database/core/SyncTree;->access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v9

    iget-object v10, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v10, v2}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    .line 786
    .end local v2    # "queryToRemove":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v8    # "tag":Lcom/google/firebase/database/core/Tag;
    goto :goto_b

    .line 790
    :cond_11
    :goto_d
    iget-object v1, v0, Lcom/google/firebase/database/core/SyncTree$14;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-static {v1, v5}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;Ljava/util/List;)V

    goto :goto_e

    .line 695
    .end local v4    # "removedAndEvents":Lcom/google/firebase/database/core/utilities/Pair;, "Lcom/google/firebase/database/core/utilities/Pair<Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;>;"
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/QuerySpec;>;"
    .end local v6    # "removingDefault":Z
    .end local v7    # "currentTree":Lcom/google/firebase/database/core/utilities/ImmutableTree;, "Lcom/google/firebase/database/core/utilities/ImmutableTree<Lcom/google/firebase/database/core/SyncPoint;>;"
    .end local v11    # "covered":Z
    .end local v16    # "path":Lcom/google/firebase/database/core/Path;
    .end local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v1    # "path":Lcom/google/firebase/database/core/Path;
    .local v2, "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :cond_12
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 794
    .end local v1    # "path":Lcom/google/firebase/database/core/Path;
    .end local v2    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    .restart local v16    # "path":Lcom/google/firebase/database/core/Path;
    .restart local v17    # "maybeSyncPoint":Lcom/google/firebase/database/core/SyncPoint;
    :goto_e
    return-object v3
.end method
