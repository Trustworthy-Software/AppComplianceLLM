.class Lio/grpc/okhttp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final HTTPS_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final HTTP_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final METHOD_GET_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->HTTPS_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 35
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->HTTP_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 36
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 37
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->METHOD_GET_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 38
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    .line 39
    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 40
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMetadata(Ljava/util/List;Lio/grpc/Metadata;)Ljava/util/List;
    .locals 5
    .param p1, "toAdd"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lio/grpc/Metadata;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 135
    .local p0, "okhttpHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-static {p1}, Lio/grpc/internal/TransportFrameUtil;->toHttp2Headers(Lio/grpc/Metadata;)[[B

    move-result-object v0

    .line 136
    .local v0, "serializedHeaders":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 137
    aget-object v2, v0, v1

    invoke-static {v2}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v2

    .line 139
    .local v2, "key":Lokio/ByteString;
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 140
    goto :goto_1

    .line 142
    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 143
    .local v3, "value":Lokio/ByteString;
    new-instance v4, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v4, v2, v3}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v2    # "key":Lokio/ByteString;
    .end local v3    # "value":Lokio/ByteString;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_2
    return-object p0
.end method

.method public static createHttpResponseHeaders(ILjava/lang/String;Lio/grpc/Metadata;)Ljava/util/List;
    .locals 5
    .param p0, "httpCode"    # I
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lio/grpc/InternalMetadata;->headerCount(Lio/grpc/Metadata;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "okhttpHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    new-instance v1, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v2}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0, p2}, Lio/grpc/okhttp/Headers;->addMetadata(Ljava/util/List;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static createRequestHeaders(Lio/grpc/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 4
    .param p0, "headers"    # Lio/grpc/Metadata;
    .param p1, "defaultPath"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "useGet"    # Z
    .param p5, "usePlaintext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 54
    const-string v0, "headers"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "defaultPath"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "authority"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p0}, Lio/grpc/okhttp/Headers;->stripNonApplicationHeaders(Lio/grpc/Metadata;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lio/grpc/InternalMetadata;->headerCount(Lio/grpc/Metadata;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v0, "okhttpHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    if-eqz p5, :cond_0

    .line 65
    sget-object v1, Lio/grpc/okhttp/Headers;->HTTP_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    sget-object v1, Lio/grpc/okhttp/Headers;->HTTPS_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_0
    if-eqz p4, :cond_1

    .line 70
    sget-object v1, Lio/grpc/okhttp/Headers;->METHOD_GET_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_1
    sget-object v1, Lio/grpc/okhttp/Headers;->METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_1
    new-instance v1, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v1, v2, p2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    move-object v1, p1

    .line 77
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v3, Lio/grpc/okhttp/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-direct {v2, v3, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v3, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v3}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, Lio/grpc/okhttp/Headers;->TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {v0, p0}, Lio/grpc/okhttp/Headers;->addMetadata(Ljava/util/List;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static createResponseHeaders(Lio/grpc/Metadata;)Ljava/util/List;
    .locals 4
    .param p0, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lio/grpc/okhttp/Headers;->stripNonApplicationHeaders(Lio/grpc/Metadata;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lio/grpc/InternalMetadata;->headerCount(Lio/grpc/Metadata;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .local v0, "okhttpHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    new-instance v1, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lokio/ByteString;

    const-string v3, "200"

    invoke-direct {v1, v2, v3}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v0, p0}, Lio/grpc/okhttp/Headers;->addMetadata(Ljava/util/List;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;
    .locals 2
    .param p0, "trailers"    # Lio/grpc/Metadata;
    .param p1, "headersSent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Z)",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 111
    if-nez p1, :cond_0

    .line 112
    invoke-static {p0}, Lio/grpc/okhttp/Headers;->createResponseHeaders(Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    invoke-static {p0}, Lio/grpc/okhttp/Headers;->stripNonApplicationHeaders(Lio/grpc/Metadata;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lio/grpc/InternalMetadata;->headerCount(Lio/grpc/Metadata;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v0, "okhttpTrailers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-static {v0, p0}, Lio/grpc/okhttp/Headers;->addMetadata(Ljava/util/List;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static stripNonApplicationHeaders(Lio/grpc/Metadata;)V
    .locals 1
    .param p0, "headers"    # Lio/grpc/Metadata;

    .line 150
    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 151
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 152
    sget-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 153
    return-void
.end method
