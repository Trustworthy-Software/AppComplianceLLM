.class final Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;
.super Lio/grpc/CallCredentials;
.source "FirestoreCallCredentials.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "FirestoreCallCredentials"

.field private static final X_FIREBASE_APPCHECK:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 36
    const-string v1, "Authorization"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;

    .line 38
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 39
    const-string v1, "x-firebase-appcheck"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->X_FIREBASE_APPCHECK:Lio/grpc/Metadata$Key;

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "authProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Lcom/google/firebase/firestore/auth/User;>;"
    .local p2, "appCheckProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Ljava/lang/String;>;"
    invoke-direct {p0}, Lio/grpc/CallCredentials;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 47
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 48
    return-void
.end method

.method static synthetic lambda$applyRequestMetadata$0(Lcom/google/android/gms/tasks/Task;Lio/grpc/CallCredentials$MetadataApplier;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 7
    .param p0, "authTask"    # Lcom/google/android/gms/tasks/Task;
    .param p1, "metadataApplier"    # Lio/grpc/CallCredentials$MetadataApplier;
    .param p2, "appCheckTask"    # Lcom/google/android/gms/tasks/Task;
    .param p3, "unused"    # Lcom/google/android/gms/tasks/Task;

    .line 69
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 71
    .local v0, "metadata":Lio/grpc/Metadata;
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FirestoreCallCredentials"

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "token":Ljava/lang/String;
    const-string v4, "Successfully fetched auth token."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    if-eqz v1, :cond_0

    .line 75
    sget-object v4, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->AUTHORIZATION_HEADER:Lio/grpc/Metadata$Key;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bearer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 77
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 79
    .local v1, "exception":Ljava/lang/Exception;
    instance-of v4, v1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-eqz v4, :cond_2

    .line 80
    const-string v4, "Firebase Auth API not available, not using authentication."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_2
    instance-of v4, v1, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    if-eqz v4, :cond_6

    .line 83
    const-string v4, "No user signed in, not using authentication."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    const-string v4, "Successfully fetched AppCheck token."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v2, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->X_FIREBASE_APPCHECK:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v2, v1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 97
    .end local v1    # "token":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 99
    .local v1, "exception":Ljava/lang/Exception;
    instance-of v4, v1, Lcom/google/firebase/FirebaseApiNotAvailableException;

    if-eqz v4, :cond_5

    .line 100
    const-string v4, "Firebase AppCheck API not available."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p1, v0}, Lio/grpc/CallCredentials$MetadataApplier;->apply(Lio/grpc/Metadata;)V

    .line 109
    return-void

    .line 102
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_5
    const-string v2, "Failed to get AppCheck token: %s."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v2, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    invoke-virtual {v2, v1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    .line 104
    return-void

    .line 85
    :cond_6
    const-string v2, "Failed to get auth token: %s."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/google/firebase/firestore/util/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v2, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    invoke-virtual {v2, v1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/grpc/CallCredentials$MetadataApplier;->fail(Lio/grpc/Status;)V

    .line 87
    return-void
.end method


# virtual methods
.method public applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 5
    .param p1, "requestInfo"    # Lio/grpc/CallCredentials$RequestInfo;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "metadataApplier"    # Lio/grpc/CallCredentials$MetadataApplier;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 58
    .local v0, "authTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 60
    .local v1, "appCheckTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAll([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p3, v1}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/Task;Lio/grpc/CallCredentials$MetadataApplier;Lcom/google/android/gms/tasks/Task;)V

    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 110
    return-void
.end method

.method public thisUsesUnstableApi()V
    .locals 0

    .line 52
    return-void
.end method
