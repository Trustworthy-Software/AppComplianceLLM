.class Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
.super Ljava/lang/Object;
.source "ActivityScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/ActivityScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackList"
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->callbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/core/ActivityScope$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/core/ActivityScope$1;

    .line 51
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized add(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
    .end local p1    # "callback":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 54
    .local v1, "callback":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 57
    .end local v1    # "callback":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method
