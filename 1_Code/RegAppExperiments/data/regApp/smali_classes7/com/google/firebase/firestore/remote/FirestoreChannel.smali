.class public Lcom/google/firebase/firestore/remote/FirestoreChannel;
.super Ljava/lang/Object;
.source "FirestoreChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;
    }
.end annotation


# static fields
.field private static final RESOURCE_PREFIX_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X_GOOG_API_CLIENT_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final X_GOOG_REQUEST_PARAMS_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile clientLanguage:Ljava/lang/String;


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

.field private final asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private final authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;"
        }
    .end annotation
.end field

.field private final callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

.field private final metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

.field private final resourcePrefixValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 55
    const-string v1, "x-goog-api-client"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->X_GOOG_API_CLIENT_HEADER:Lio/grpc/Metadata$Key;

    .line 57
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 58
    const-string v1, "google-cloud-resource-prefix"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->RESOURCE_PREFIX_HEADER:Lio/grpc/Metadata$Key;

    .line 59
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 60
    const-string v1, "x-goog-request-params"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->X_GOOG_REQUEST_PARAMS_HEADER:Lio/grpc/Metadata$Key;

    .line 65
    const-string v0, "gl-java/"

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->clientLanguage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/util/AsyncQueue;Landroid/content/Context;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/core/DatabaseInfo;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V
    .locals 4
    .param p1, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p2, "context"    # Landroid/content/Context;
    .param p5, "databaseInfo"    # Lcom/google/firebase/firestore/core/DatabaseInfo;
    .param p6, "metadataProvider"    # Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Landroid/content/Context;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Lcom/google/firebase/firestore/auth/User;",
            ">;",
            "Lcom/google/firebase/firestore/auth/CredentialsProvider<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/firebase/firestore/core/DatabaseInfo;",
            "Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;",
            ")V"
        }
    .end annotation

    .line 88
    .local p3, "authProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Lcom/google/firebase/firestore/auth/User;>;"
    .local p4, "appCheckProvider":Lcom/google/firebase/firestore/auth/CredentialsProvider;, "Lcom/google/firebase/firestore/auth/CredentialsProvider<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 90
    iput-object p6, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    .line 91
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 92
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    .line 94
    new-instance v0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;

    invoke-direct {v0, p3, p4}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;-><init>(Lcom/google/firebase/firestore/auth/CredentialsProvider;Lcom/google/firebase/firestore/auth/CredentialsProvider;)V

    .line 96
    .local v0, "firestoreHeaders":Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;
    new-instance v1, Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-direct {v1, p1, p2, p5, v0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;-><init>(Lcom/google/firebase/firestore/util/AsyncQueue;Landroid/content/Context;Lcom/google/firebase/firestore/core/DatabaseInfo;Lio/grpc/CallCredentials;)V

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    .line 98
    invoke-virtual {p5}, Lcom/google/firebase/firestore/core/DatabaseInfo;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    .line 99
    .local v1, "databaseId":Lcom/google/firebase/firestore/model/DatabaseId;
    nop

    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getProjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/DatabaseId;->getDatabaseId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 100
    const-string v3, "projects/%s/databases/%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->resourcePrefixValue:Ljava/lang/String;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/remote/FirestoreChannel;)Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;

    .line 43
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/remote/FirestoreChannel;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 43
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v0

    return-object v0
.end method

.method private exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 4
    .param p1, "status"    # Lio/grpc/Status;

    .line 276
    invoke-static {p1}, Lcom/google/firebase/firestore/remote/Datastore;->isMissingSslCiphers(Lio/grpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 279
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v1

    invoke-static {v1}, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object v1

    .line 280
    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "The Cloud Firestore client failed to establish a secure connection. This is likely a problem with your app, rather than with Cloud Firestore itself. See https://bit.ly/2XFpdma for instructions on how to enable TLS on Android 4.x devices."

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V

    .line 277
    return-object v0

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v0

    return-object v0
.end method

.method private getGoogApiClientValue()Ljava/lang/String;
    .locals 2

    .line 296
    sget-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->clientLanguage:Ljava/lang/String;

    const-string v1, "24.9.1"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s fire/%s grpc/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestHeaders()Lio/grpc/Metadata;
    .locals 3

    .line 301
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 302
    .local v0, "headers":Lio/grpc/Metadata;
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->X_GOOG_API_CLIENT_HEADER:Lio/grpc/Metadata$Key;

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->getGoogApiClientValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 307
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->RESOURCE_PREFIX_HEADER:Lio/grpc/Metadata$Key;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->resourcePrefixValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 308
    sget-object v1, Lcom/google/firebase/firestore/remote/FirestoreChannel;->X_GOOG_REQUEST_PARAMS_HEADER:Lio/grpc/Metadata$Key;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->resourcePrefixValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v1, v0}, Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;->updateMetadata(Lio/grpc/Metadata;)V

    .line 312
    :cond_0
    return-object v0
.end method

.method public static setClientLanguage(Ljava/lang/String;)V
    .locals 0
    .param p0, "languageToken"    # Ljava/lang/String;

    .line 292
    sput-object p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->clientLanguage:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method public invalidateToken()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->authProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->invalidateToken()V

    .line 288
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->appCheckProvider:Lcom/google/firebase/firestore/auth/CredentialsProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/auth/CredentialsProvider;->invalidateToken()V

    .line 289
    return-void
.end method

.method synthetic lambda$runBidiStreamingRpc$0$com-google-firebase-firestore-remote-FirestoreChannel([Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "call"    # [Lio/grpc/ClientCall;
    .param p2, "observer"    # Lcom/google/firebase/firestore/remote/IncomingStreamObserver;
    .param p3, "result"    # Lcom/google/android/gms/tasks/Task;

    .line 124
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 126
    aget-object v0, p1, v1

    new-instance v2, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$1;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;[Lio/grpc/ClientCall;)V

    .line 164
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->requestHeaders()Lio/grpc/Metadata;

    move-result-object v3

    .line 126
    invoke-virtual {v0, v2, v3}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 166
    invoke-interface {p2}, Lcom/google/firebase/firestore/remote/IncomingStreamObserver;->onOpen()V

    .line 170
    aget-object v0, p1, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 171
    return-void
.end method

.method synthetic lambda$runRpc$2$com-google-firebase-firestore-remote-FirestoreChannel(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1, "tcs"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "request"    # Ljava/lang/Object;
    .param p3, "result"    # Lcom/google/android/gms/tasks/Task;

    .line 237
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall;

    .line 239
    .local v0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    new-instance v1, Lcom/google/firebase/firestore/remote/FirestoreChannel$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$4;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 261
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->requestHeaders()Lio/grpc/Metadata;

    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 266
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 268
    invoke-virtual {v0, p2}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    .line 270
    return-void
.end method

.method synthetic lambda$runStreamingResponseRpc$1$com-google-firebase-firestore-remote-FirestoreChannel(Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;
    .param p2, "request"    # Ljava/lang/Object;
    .param p3, "result"    # Lcom/google/android/gms/tasks/Task;

    .line 203
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall;

    .line 204
    .local v0, "call":Lio/grpc/ClientCall;, "Lio/grpc/ClientCall<TReqT;TRespT;>;"
    new-instance v1, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/firebase/firestore/remote/FirestoreChannel$3;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;Lio/grpc/ClientCall;)V

    .line 218
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->requestHeaders()Lio/grpc/Metadata;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 223
    invoke-virtual {v0, p2}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    .line 225
    return-void
.end method

.method runBidiStreamingRpc(Lio/grpc/MethodDescriptor;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)Lio/grpc/ClientCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lcom/google/firebase/firestore/remote/IncomingStreamObserver<",
            "TRespT;>;)",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 117
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p2, "observer":Lcom/google/firebase/firestore/remote/IncomingStreamObserver;, "Lcom/google/firebase/firestore/remote/IncomingStreamObserver<TRespT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lio/grpc/ClientCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 119
    .local v0, "call":[Lio/grpc/ClientCall;, "[Lio/grpc/ClientCall<TReqT;TRespT;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->createClientCall(Lio/grpc/MethodDescriptor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 121
    .local v1, "clientCall":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<Lio/grpc/ClientCall<TReqT;TRespT;>;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 122
    invoke-virtual {v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p2}, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)V

    .line 121
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 173
    new-instance v2, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel$2;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/android/gms/tasks/Task;)V

    return-object v2
.end method

.method runRpc(Lio/grpc/MethodDescriptor;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;TReqT;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TRespT;>;"
        }
    .end annotation

    .line 230
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p2, "request":Ljava/lang/Object;, "TReqT;"
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 232
    .local v0, "tcs":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TRespT;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    .line 233
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->createClientCall(Lio/grpc/MethodDescriptor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 235
    invoke-virtual {v2}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p2}, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method runStreamingResponseRpc(Lio/grpc/MethodDescriptor;Ljava/lang/Object;Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;TReqT;",
            "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 198
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p2, "request":Ljava/lang/Object;, "TReqT;"
    .local p3, "callback":Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;, "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<TRespT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    .line 199
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->createClientCall(Lio/grpc/MethodDescriptor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    .line 201
    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3, p2}, Lcom/google/firebase/firestore/remote/FirestoreChannel$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 226
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel;->callProvider:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->shutdown()V

    .line 109
    return-void
.end method
