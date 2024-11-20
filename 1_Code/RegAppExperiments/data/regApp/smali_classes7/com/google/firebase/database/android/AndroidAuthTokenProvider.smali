.class public Lcom/google/firebase/database/android/AndroidAuthTokenProvider;
.super Ljava/lang/Object;
.source "AndroidAuthTokenProvider.java"

# interfaces
.implements Lcom/google/firebase/database/core/TokenProvider;


# instance fields
.field private final deferredAuthProvider:Lcom/google/firebase/inject/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final internalAuth:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;"
        }
    .end annotation
.end field


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

    .line 33
    .local p1, "deferredAuthProvider":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/auth/internal/InternalAuthProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->deferredAuthProvider:Lcom/google/firebase/inject/Deferred;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda3;-><init>(Lcom/google/firebase/database/android/AndroidAuthTokenProvider;)V

    invoke-interface {p1, v0}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 38
    return-void
.end method

.method private static isUnauthenticatedUsage(Ljava/lang/Exception;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 84
    instance-of v0, p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$addTokenChangeListener$3(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1
    .param p0, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;
    .param p1, "tokenResult"    # Lcom/google/firebase/internal/InternalTokenResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/firebase/internal/InternalTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$4(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V
    .locals 1
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;
    .param p2, "tokenResult"    # Lcom/google/firebase/internal/InternalTokenResult;

    .line 74
    new-instance v0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/internal/InternalTokenResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$5(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p0, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;
    .param p2, "provider"    # Lcom/google/firebase/inject/Provider;

    .line 71
    invoke-interface {p2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    new-instance v1, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    .line 72
    invoke-interface {v0, v1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->addIdTokenListener(Lcom/google/firebase/auth/internal/IdTokenListener;)V

    .line 71
    return-void
.end method

.method static synthetic lambda$getToken$1(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Lcom/google/firebase/auth/GetTokenResult;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;
    .param p1, "result"    # Lcom/google/firebase/auth/GetTokenResult;

    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getToken$2(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 53
    invoke-static {p1}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->isUnauthenticatedUsage(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onError(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    .line 68
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->deferredAuthProvider:Lcom/google/firebase/inject/Deferred;

    new-instance v1, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/inject/Deferred;->whenAvailable(Lcom/google/firebase/inject/Deferred$DeferredHandler;)V

    .line 76
    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V
    .locals 4
    .param p1, "forceRefresh"    # Z
    .param p2, "listener"    # Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;

    .line 44
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 46
    .local v0, "authProvider":Lcom/google/firebase/auth/internal/InternalAuthProvider;
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Lcom/google/firebase/auth/internal/InternalAuthProvider;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 49
    .local v1, "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    new-instance v2, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    .line 50
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$$ExternalSyntheticLambda5;-><init>(Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    .line 51
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 60
    .end local v1    # "getTokenResult":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lcom/google/firebase/auth/GetTokenResult;>;"
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void
.end method

.method synthetic lambda$new$0$com-google-firebase-database-android-AndroidAuthTokenProvider(Lcom/google/firebase/inject/Provider;)V
    .locals 2
    .param p1, "authProvider"    # Lcom/google/firebase/inject/Provider;

    .line 37
    iget-object v0, p0, Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->internalAuth:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/InternalAuthProvider;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V
    .locals 0
    .param p1, "tokenListener"    # Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;

    .line 81
    return-void
.end method
