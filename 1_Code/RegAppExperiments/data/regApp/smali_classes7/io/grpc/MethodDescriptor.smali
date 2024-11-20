.class public final Lio/grpc/MethodDescriptor;
.super Ljava/lang/Object;
.source "MethodDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/MethodDescriptor$Builder;,
        Lio/grpc/MethodDescriptor$PrototypeMarshaller;,
        Lio/grpc/MethodDescriptor$ReflectableMarshaller;,
        Lio/grpc/MethodDescriptor$Marshaller;,
        Lio/grpc/MethodDescriptor$MethodType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fullMethodName:Ljava/lang/String;

.field private final idempotent:Z

.field private final rawMethodNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private final responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private final safe:Z

.field private final sampledToLocalTracing:Z

.field private final schemaDescriptor:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final serviceName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 39
    return-void
.end method

.method private constructor <init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Ljava/lang/Object;ZZZ)V
    .locals 2
    .param p1, "type"    # Lio/grpc/MethodDescriptor$MethodType;
    .param p2, "fullMethodName"    # Ljava/lang/String;
    .param p5, "schemaDescriptor"    # Ljava/lang/Object;
    .param p6, "idempotent"    # Z
    .param p7, "safe"    # Z
    .param p8, "sampledToLocalTracing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$MethodType;",
            "Ljava/lang/String;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;",
            "Ljava/lang/Object;",
            "ZZZ)V"
        }
    .end annotation

    .line 223
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p3, "requestMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TReqT;>;"
    .local p4, "responseMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TRespT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lio/grpc/MethodDescriptor;->rawMethodNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 224
    if-eqz p7, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "safe should imply idempotent"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 225
    :cond_1
    :goto_0
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor$MethodType;

    iput-object v0, p0, Lio/grpc/MethodDescriptor;->type:Lio/grpc/MethodDescriptor$MethodType;

    .line 226
    const-string v0, "fullMethodName"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/MethodDescriptor;->fullMethodName:Ljava/lang/String;

    .line 227
    invoke-static {p2}, Lio/grpc/MethodDescriptor;->extractFullServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/MethodDescriptor;->serviceName:Ljava/lang/String;

    .line 228
    const-string v0, "requestMarshaller"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor$Marshaller;

    iput-object v0, p0, Lio/grpc/MethodDescriptor;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    .line 229
    const-string v0, "responseMarshaller"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/MethodDescriptor$Marshaller;

    iput-object v0, p0, Lio/grpc/MethodDescriptor;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    .line 230
    iput-object p5, p0, Lio/grpc/MethodDescriptor;->schemaDescriptor:Ljava/lang/Object;

    .line 231
    iput-boolean p6, p0, Lio/grpc/MethodDescriptor;->idempotent:Z

    .line 232
    iput-boolean p7, p0, Lio/grpc/MethodDescriptor;->safe:Z

    .line 233
    iput-boolean p8, p0, Lio/grpc/MethodDescriptor;->sampledToLocalTracing:Z

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Ljava/lang/Object;ZZZLio/grpc/MethodDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/MethodDescriptor$MethodType;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/grpc/MethodDescriptor$Marshaller;
    .param p4, "x3"    # Lio/grpc/MethodDescriptor$Marshaller;
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Z
    .param p9, "x8"    # Lio/grpc/MethodDescriptor$1;

    .line 40
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    invoke-direct/range {p0 .. p8}, Lio/grpc/MethodDescriptor;-><init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Ljava/lang/Object;ZZZ)V

    return-void
.end method

.method public static create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;
    .locals 10
    .param p0, "type"    # Lio/grpc/MethodDescriptor$MethodType;
    .param p1, "fullMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor$MethodType;",
            "Ljava/lang/String;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRequestT;>;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TResponseT;>;)",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    .local p2, "requestMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TRequestT;>;"
    .local p3, "responseMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TResponseT;>;"
    new-instance v9, Lio/grpc/MethodDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lio/grpc/MethodDescriptor;-><init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Ljava/lang/Object;ZZZ)V

    return-object v9
.end method

.method public static extractBareMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullMethodName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 421
    const-string v0, "fullMethodName"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 422
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v1, 0x0

    return-object v1

    .line 425
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static extractFullServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullMethodName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 405
    const-string v0, "fullMethodName"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 406
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 407
    const/4 v1, 0x0

    return-object v1

    .line 409
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullServiceName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fullServiceName"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    const-string v1, "methodName"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/MethodDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 435
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lio/grpc/MethodDescriptor;->newBuilder(Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 446
    .local p0, "requestMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TReqT;>;"
    .local p1, "responseMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TRespT;>;"
    new-instance v0, Lio/grpc/MethodDescriptor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/MethodDescriptor$Builder;-><init>(Lio/grpc/MethodDescriptor$1;)V

    .line 447
    invoke-virtual {v0, p0}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 446
    return-object v0
.end method


# virtual methods
.method public getBareMethodName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 273
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->fullMethodName:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/MethodDescriptor;->extractBareMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullMethodName()Ljava/lang/String;
    .locals 1

    .line 251
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->fullMethodName:Ljava/lang/String;

    return-object v0
.end method

.method final getRawMethodName(I)Ljava/lang/Object;
    .locals 1
    .param p1, "transportOrdinal"    # I

    .line 65
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->rawMethodNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMarshaller()Lio/grpc/MethodDescriptor$Marshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    return-object v0
.end method

.method public getResponseMarshaller()Lio/grpc/MethodDescriptor$Marshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    return-object v0
.end method

.method public getSchemaDescriptor()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 353
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->schemaDescriptor:Ljava/lang/Object;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 262
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 242
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->type:Lio/grpc/MethodDescriptor$MethodType;

    return-object v0
.end method

.method public isIdempotent()Z
    .locals 1

    .line 362
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/MethodDescriptor;->idempotent:Z

    return v0
.end method

.method public isSafe()Z
    .locals 1

    .line 373
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/MethodDescriptor;->safe:Z

    return v0
.end method

.method public isSampledToLocalTracing()Z
    .locals 1

    .line 380
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/MethodDescriptor;->sampledToLocalTracing:Z

    return v0
.end method

.method public parseRequest(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TReqT;"
        }
    .end annotation

    .line 307
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseResponse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TRespT;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final setRawMethodName(ILjava/lang/Object;)V
    .locals 1
    .param p1, "transportOrdinal"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 73
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->rawMethodNames:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method public streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p1, "requestMessage":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->stream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public streamResponse(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p1, "response":Ljava/lang/Object;, "TRespT;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->stream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/MethodDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 458
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/MethodDescriptor;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-virtual {p0, v0, v1}, Lio/grpc/MethodDescriptor;->toBuilder(Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder(Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewReqT:",
            "Ljava/lang/Object;",
            "NewRespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TNewReqT;>;",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TNewRespT;>;)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TNewReqT;TNewRespT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 469
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    .local p1, "requestMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TNewReqT;>;"
    .local p2, "responseMarshaller":Lio/grpc/MethodDescriptor$Marshaller;, "Lio/grpc/MethodDescriptor$Marshaller<TNewRespT;>;"
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {v0, p2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->type:Lio/grpc/MethodDescriptor$MethodType;

    .line 472
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->fullMethodName:Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/MethodDescriptor;->idempotent:Z

    .line 474
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$Builder;->setIdempotent(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/MethodDescriptor;->safe:Z

    .line 475
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$Builder;->setSafe(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/MethodDescriptor;->sampledToLocalTracing:Z

    .line 476
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->schemaDescriptor:Ljava/lang/Object;

    .line 477
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$Builder;->setSchemaDescriptor(Ljava/lang/Object;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 469
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 619
    .local p0, "this":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->fullMethodName:Ljava/lang/String;

    .line 620
    const-string v2, "fullMethodName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->type:Lio/grpc/MethodDescriptor$MethodType;

    .line 621
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/MethodDescriptor;->idempotent:Z

    .line 622
    const-string v2, "idempotent"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/MethodDescriptor;->safe:Z

    .line 623
    const-string v2, "safe"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/MethodDescriptor;->sampledToLocalTracing:Z

    .line 624
    const-string v2, "sampledToLocalTracing"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    .line 625
    const-string v2, "requestMarshaller"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    .line 626
    const-string v2, "responseMarshaller"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/MethodDescriptor;->schemaDescriptor:Ljava/lang/Object;

    .line 627
    const-string v2, "schemaDescriptor"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    return-object v0
.end method
