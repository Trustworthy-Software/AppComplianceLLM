.class public final Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
.super Lcom/google/firebase/firestore/auth/CredentialsProvider;
.source "FirebaseAuthCredentialsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
        "Lcom/google/firebase/firestore/auth/User;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FirebaseAuthCredentialsProvider"


# instance fields
.field private changeListener:Lcom/google/firebase/firestore/util/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/util/Listener<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;"
        }
    .end annotation
.end field

.field private forceRefresh:Z

.field private final idTokenListener:Lcom/google/firebase/auth/internal/IdTokenListener;

.field private internalAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

.field private tokenCounter:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "deferredAuthProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/auth/internal/InternalAuthProvider;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;-><init>()V

    .line 52
    new-instance v0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->idTokenListener:Lcom/google/firebase/auth/internal/IdTokenListener;

    .line 78
    new-instance v0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 86
    return-void
.end method

.method private declared-synchronized getUser()Lcom/google/firebase/firestore/auth/User;
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->internalAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "uid":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/firebase/firestore/auth/User;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/auth/User;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
    :cond_1
    sget-object v1, Lcom/google/firebase/firestore/auth/User;->UNAUTHENTICATED:Lcom/google/firebase/firestore/auth/User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v1

    .line 151
    .end local v0    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onIdTokenChanged()V
    .locals 2

    monitor-enter p0

    .line 144
    :try_start_0
    iget v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->tokenCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->tokenCounter:I

    .line 145
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->changeListener:Lcom/google/firebase/firestore/util/Listener;

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->getUser()Lcom/google/firebase/firestore/auth/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/util/Listener;->onValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
    :cond_0
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getToken()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->internalAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    const-string v1, "auth is not available"

    invoke-direct {v0, v1}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->forceRefresh:Z

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 95
    .local v0, "res":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->forceRefresh:Z

    .line 99
    iget v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->tokenCounter:I

    .line 100
    .local v1, "savedCounter":I
    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;I)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 89
    .end local v0    # "res":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    .end local v1    # "savedCounter":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidateToken()V
    .locals 1

    monitor-enter p0

    .line 122
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->forceRefresh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$getToken$2$com-google-firebase-firestore-auth-FirebaseAuthCredentialsProvider(ILcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "savedCounter"    # I
    .param p2, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    monitor-enter p0

    .line 106
    :try_start_0
    iget v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->tokenCounter:I

    if-eq p1, v0, :cond_0

    .line 107
    const-string v0, "FirebaseAuthCredentialsProvider"

    const-string v1, "getToken aborted due to token change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {v0}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic lambda$new$0$com-google-firebase-firestore-auth-FirebaseAuthCredentialsProvider(Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 0
    .param p1, "result"    # Lcom/google/firebase/internal/InternalTokenResult;

    .line 52
    invoke-direct {p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->onIdTokenChanged()V

    return-void
.end method

.method synthetic lambda$new$1$com-google-firebase-firestore-auth-FirebaseAuthCredentialsProvider(Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p1, "provider"    # Lcom/google/firebase/inject/Provider;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    iput-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->internalAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 82
    invoke-direct {p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->onIdTokenChanged()V

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->internalAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->idTokenListener:Lcom/google/firebase/auth/internal/IdTokenListener;

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
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

    .line 135
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->changeListener:Lcom/google/firebase/firestore/util/Listener;

    .line 137
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->internalAuthProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->idTokenListener:Lcom/google/firebase/auth/internal/IdTokenListener;

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->removeIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChangeListener(Lcom/google/firebase/firestore/util/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Listener<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;)V"
        }
    .end annotation

    .local p1, "changeListener":Lcom/google/firebase/firestore/util/Listener;, "Lcom/google/firebase/firestore/util/Listener<Lcom/google/firebase/firestore/auth/User;>;"
    monitor-enter p0

    .line 127
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->changeListener:Lcom/google/firebase/firestore/util/Listener;

    .line 130
    invoke-direct {p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->getUser()Lcom/google/firebase/firestore/auth/User;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/util/Listener;->onValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;
    .end local p1    # "changeListener":Lcom/google/firebase/firestore/util/Listener;, "Lcom/google/firebase/firestore/util/Listener<Lcom/google/firebase/firestore/auth/User;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
