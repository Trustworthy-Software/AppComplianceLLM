.class public Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;
.super Ljava/lang/Object;
.source "FirebaseClientGrpcMetadataProvider.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;


# static fields
.field private static final GMP_APP_ID_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEART_BEAT_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEART_BEAT_TAG:Ljava/lang/String; = "fire-fst"

.field private static final USER_AGENT_HEADER:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firebaseOptions:Lcom/google/firebase/FirebaseOptions;

.field private final heartBeatInfoProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgentPublisherProvider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 39
    const-string v1, "x-firebase-client-log-type"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->HEART_BEAT_HEADER:Lio/grpc/Metadata$Key;

    .line 41
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 42
    const-string v1, "x-firebase-client"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->USER_AGENT_HEADER:Lio/grpc/Metadata$Key;

    .line 44
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 45
    const-string v1, "x-firebase-gmpid"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->GMP_APP_ID_HEADER:Lio/grpc/Metadata$Key;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/FirebaseOptions;)V
    .locals 0
    .param p3, "firebaseOptions"    # Lcom/google/firebase/FirebaseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Lcom/google/firebase/FirebaseOptions;",
            ")V"
        }
    .end annotation

    .line 50
    .local p1, "userAgentPublisherProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/platforminfo/UserAgentPublisher;>;"
    .local p2, "heartBeatInfoProvider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->userAgentPublisherProvider:Lcom/google/firebase/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->heartBeatInfoProvider:Lcom/google/firebase/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->firebaseOptions:Lcom/google/firebase/FirebaseOptions;

    .line 54
    return-void
.end method

.method private maybeAddGmpAppId(Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "metadata"    # Lio/grpc/Metadata;

    .line 73
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->firebaseOptions:Lcom/google/firebase/FirebaseOptions;

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "gmpAppId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    sget-object v1, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->GMP_APP_ID_HEADER:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v1, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public updateMetadata(Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "metadata"    # Lio/grpc/Metadata;

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->heartBeatInfoProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->userAgentPublisherProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->heartBeatInfoProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    const-string v1, "fire-fst"

    invoke-interface {v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;->getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->getCode()I

    move-result v0

    .line 64
    .local v0, "heartBeatCode":I
    if-eqz v0, :cond_1

    .line 65
    sget-object v1, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->HEART_BEAT_HEADER:Lio/grpc/Metadata$Key;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 68
    :cond_1
    sget-object v1, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->USER_AGENT_HEADER:Lio/grpc/Metadata$Key;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->userAgentPublisherProvider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v2}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    invoke-interface {v2}, Lcom/google/firebase/platforminfo/UserAgentPublisher;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/FirebaseClientGrpcMetadataProvider;->maybeAddGmpAppId(Lio/grpc/Metadata;)V

    .line 70
    return-void

    .line 59
    .end local v0    # "heartBeatCode":I
    :cond_2
    :goto_0
    return-void
.end method
