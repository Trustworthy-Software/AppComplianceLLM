.class Lcom/google/firebase/database/core/Repo$9;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->getValue(Lcom/google/firebase/database/Query;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$query:Lcom/google/firebase/database/Query;

.field final synthetic val$repo:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/Query;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/core/Repo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 519
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$9;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$9;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0
    .param p0, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "persisted"    # Lcom/google/firebase/database/DataSnapshot;

    .line 535
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$run$1$com-google-firebase-database-core-Repo$9(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/DataSnapshot;Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/Repo;Lcom/google/android/gms/tasks/Task;)V
    .locals 6
    .param p1, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "persisted"    # Lcom/google/firebase/database/DataSnapshot;
    .param p3, "query"    # Lcom/google/firebase/database/Query;
    .param p4, "repo"    # Lcom/google/firebase/database/core/Repo;
    .param p5, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 542
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    invoke-virtual {p2}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 557
    :cond_2
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 558
    .local v0, "serverNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-virtual {p3}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    .line 561
    .local v1, "spec":Lcom/google/firebase/database/core/view/QuerySpec;
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Lcom/google/firebase/database/core/Repo;->keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;ZZ)V

    .line 563
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 564
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v2

    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_0

    .line 566
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 567
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v2

    .line 568
    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 570
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Repo;->getServerSyncTree()Lcom/google/firebase/database/core/SyncTree;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v5

    .line 567
    invoke-virtual {v2, v4, v0, v5}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object v2

    .line 572
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :goto_0
    invoke-static {p4, v2}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    .line 575
    nop

    .line 577
    invoke-virtual {p3}, Lcom/google/firebase/database/Query;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    .line 578
    invoke-virtual {p3}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    .line 576
    invoke-static {v4, v5}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v4

    .line 575
    invoke-virtual {p1, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 579
    iget-object v4, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Lcom/google/firebase/database/core/Repo;->keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;ZZ)V

    .line 581
    .end local v0    # "serverNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v1    # "spec":Lcom/google/firebase/database/core/view/QuerySpec;
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :goto_1
    return-void
.end method

.method public run()V
    .locals 11

    .line 524
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v1}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->getServerValue(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 525
    .local v0, "serverValue":Lcom/google/firebase/database/snapshot/Node;
    if-eqz v0, :cond_0

    .line 526
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    .line 528
    invoke-virtual {v2}, Lcom/google/firebase/database/Query;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 527
    invoke-static {v2, v3}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    .line 526
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 529
    return-void

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v1}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v2}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/SyncTree;->setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 532
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v1}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/SyncTree;->persistenceServerCache(Lcom/google/firebase/database/Query;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    .line 533
    .local v1, "persisted":Lcom/google/firebase/database/DataSnapshot;
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$9;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v4, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/DataSnapshot;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/firebase/database/core/Repo;->scheduleDelayed(Ljava/lang/Runnable;J)V

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    .line 538
    invoke-virtual {v3}, Lcom/google/firebase/database/Query;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    invoke-virtual {v4}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QueryParams;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/firebase/database/connection/PersistentConnection;->get(Ljava/util/List;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 540
    invoke-static {v3}, Lcom/google/firebase/database/core/Repo;->access$1000(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    iget-object v5, p0, Lcom/google/firebase/database/core/Repo$9;->val$source:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v7, p0, Lcom/google/firebase/database/core/Repo$9;->val$query:Lcom/google/firebase/database/Query;

    iget-object v8, p0, Lcom/google/firebase/database/core/Repo$9;->val$repo:Lcom/google/firebase/database/core/Repo;

    new-instance v10, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;

    move-object v3, v10

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/database/core/Repo$9;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/DataSnapshot;Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/Repo;)V

    .line 539
    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 582
    return-void
.end method
