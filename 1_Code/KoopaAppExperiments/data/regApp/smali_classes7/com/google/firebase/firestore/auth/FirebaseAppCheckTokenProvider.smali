.class public final Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;
.super Lcom/google/firebase/firestore/auth/CredentialsProvider;
.source "FirebaseAppCheckTokenProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirebaseAppCheckTokenProvider"


# instance fields
.field private changeListener:Lcom/google/firebase/firestore/util/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/util/Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private forceRefresh:Z

.field private interopAppCheckTokenProvider:Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

.field private final tokenListener:Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "deferredAppCheckTokenProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;-><init>()V

    .line 56
    new-instance v0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->tokenListener:Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;

    .line 62
    new-instance v0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 72
    return-void
.end method

.method static synthetic lambda$getToken$2(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/AppCheckTokenResult;

    invoke-virtual {v0}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized onTokenChanged(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/firebase/appcheck/AppCheckTokenResult;

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "FirebaseAppCheckTokenProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting App Check token; using placeholder token instead. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 77
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->changeListener:Lcom/google/firebase/firestore/util/Listener;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/util/Listener;->onValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    monitor-exit p0

    return-void

    .line 75
    .end local p1    # "result":Lcom/google/firebase/appcheck/AppCheckTokenResult;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->interopAppCheckTokenProvider:Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    const-string v1, "AppCheck is not available"

    invoke-direct {v0, v1}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->forceRefresh:Z

    invoke-interface {v0, v1}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 97
    .local v0, "res":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/appcheck/AppCheckTokenResult;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->forceRefresh:Z

    .line 99
    sget-object v1, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 91
    .end local v0    # "res":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/appcheck/AppCheckTokenResult;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateToken()V
    .locals 1

    monitor-enter p0

    .line 116
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->forceRefresh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$new$0$com-google-firebase-firestore-auth-FirebaseAppCheckTokenProvider(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V
    .locals 0
    .param p1, "result"    # Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 56
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->onTokenChanged(Lcom/google/firebase/appcheck/AppCheckTokenResult;)V

    return-void
.end method

.method synthetic lambda$new$1$com-google-firebase-firestore-auth-FirebaseAppCheckTokenProvider(Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p1, "provider"    # Lcom/google/firebase/inject/Provider;

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    iput-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->interopAppCheckTokenProvider:Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->tokenListener:Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;

    invoke-interface {v0, v1}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->addAppCheckTokenListener(Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;)V

    .line 70
    :cond_0
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeChangeListener()V
    .locals 2

    monitor-enter p0

    .line 122
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->changeListener:Lcom/google/firebase/firestore/util/Listener;

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->interopAppCheckTokenProvider:Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->tokenListener:Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;

    invoke-interface {v0, v1}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->removeAppCheckTokenListener(Lcom/google/firebase/appcheck/interop/AppCheckTokenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChangeListener(Lcom/google/firebase/firestore/util/Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Listener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "changeListener":Lcom/google/firebase/firestore/util/Listener;, "Lcom/google/firebase/firestore/util/Listener<Ljava/lang/String;>;"
    monitor-enter p0

    .line 132
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;->changeListener:Lcom/google/firebase/firestore/util/Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 131
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAppCheckTokenProvider;
    .end local p1    # "changeListener":Lcom/google/firebase/firestore/util/Listener;, "Lcom/google/firebase/firestore/util/Listener<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
