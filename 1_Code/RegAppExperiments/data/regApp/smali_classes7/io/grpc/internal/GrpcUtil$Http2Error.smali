.class public final enum Lio/grpc/internal/GrpcUtil$Http2Error;
.super Ljava/lang/Enum;
.source "GrpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Http2Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/internal/GrpcUtil$Http2Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum CANCEL:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum COMPRESSION_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum CONNECT_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum ENHANCE_YOUR_CALM:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum FLOW_CONTROL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum FRAME_SIZE_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum HTTP_1_1_REQUIRED:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum INADEQUATE_SECURITY:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum NO_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum PROTOCOL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum REFUSED_STREAM:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum SETTINGS_TIMEOUT:Lio/grpc/internal/GrpcUtil$Http2Error;

.field public static final enum STREAM_CLOSED:Lio/grpc/internal/GrpcUtil$Http2Error;

.field private static final codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;


# instance fields
.field private final code:I

.field private final status:Lio/grpc/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 332
    new-instance v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v1, 0x0

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "NO_ERROR"

    invoke-direct {v0, v3, v1, v1, v2}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->NO_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 333
    new-instance v1, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v2, 0x1

    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v4, "PROTOCOL_ERROR"

    invoke-direct {v1, v4, v2, v2, v3}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->PROTOCOL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 334
    new-instance v2, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v3, 0x2

    sget-object v4, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v5, "INTERNAL_ERROR"

    invoke-direct {v2, v5, v3, v3, v4}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v2, Lio/grpc/internal/GrpcUtil$Http2Error;->INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 335
    new-instance v3, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v4, 0x3

    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v6, "FLOW_CONTROL_ERROR"

    invoke-direct {v3, v6, v4, v4, v5}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v3, Lio/grpc/internal/GrpcUtil$Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 336
    new-instance v4, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v5, 0x4

    sget-object v6, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v7, "SETTINGS_TIMEOUT"

    invoke-direct {v4, v7, v5, v5, v6}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v4, Lio/grpc/internal/GrpcUtil$Http2Error;->SETTINGS_TIMEOUT:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 337
    new-instance v5, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v6, 0x5

    sget-object v7, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v8, "STREAM_CLOSED"

    invoke-direct {v5, v8, v6, v6, v7}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v5, Lio/grpc/internal/GrpcUtil$Http2Error;->STREAM_CLOSED:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 338
    new-instance v6, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v7, 0x6

    sget-object v8, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v9, "FRAME_SIZE_ERROR"

    invoke-direct {v6, v9, v7, v7, v8}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v6, Lio/grpc/internal/GrpcUtil$Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 339
    new-instance v7, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/4 v8, 0x7

    sget-object v9, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v10, "REFUSED_STREAM"

    invoke-direct {v7, v10, v8, v8, v9}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v7, Lio/grpc/internal/GrpcUtil$Http2Error;->REFUSED_STREAM:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 340
    new-instance v8, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/16 v9, 0x8

    sget-object v10, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v11, "CANCEL"

    invoke-direct {v8, v11, v9, v9, v10}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v8, Lio/grpc/internal/GrpcUtil$Http2Error;->CANCEL:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 341
    new-instance v9, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/16 v10, 0x9

    sget-object v11, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v12, "COMPRESSION_ERROR"

    invoke-direct {v9, v12, v10, v10, v11}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v9, Lio/grpc/internal/GrpcUtil$Http2Error;->COMPRESSION_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 342
    new-instance v10, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/16 v11, 0xa

    sget-object v12, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v13, "CONNECT_ERROR"

    invoke-direct {v10, v13, v11, v11, v12}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v10, Lio/grpc/internal/GrpcUtil$Http2Error;->CONNECT_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 343
    new-instance v11, Lio/grpc/internal/GrpcUtil$Http2Error;

    sget-object v12, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v13, "Bandwidth exhausted"

    invoke-virtual {v12, v13}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v12

    const-string v13, "ENHANCE_YOUR_CALM"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v14, v12}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v11, Lio/grpc/internal/GrpcUtil$Http2Error;->ENHANCE_YOUR_CALM:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 344
    new-instance v12, Lio/grpc/internal/GrpcUtil$Http2Error;

    sget-object v13, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    const-string v14, "Permission denied as protocol is not secure enough to call"

    invoke-virtual {v13, v14}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v13

    const-string v14, "INADEQUATE_SECURITY"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v15, v13}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v12, Lio/grpc/internal/GrpcUtil$Http2Error;->INADEQUATE_SECURITY:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 346
    new-instance v13, Lio/grpc/internal/GrpcUtil$Http2Error;

    const/16 v14, 0xd

    sget-object v15, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    move-object/from16 v16, v12

    const-string v12, "HTTP_1_1_REQUIRED"

    invoke-direct {v13, v12, v14, v14, v15}, Lio/grpc/internal/GrpcUtil$Http2Error;-><init>(Ljava/lang/String;IILio/grpc/Status;)V

    sput-object v13, Lio/grpc/internal/GrpcUtil$Http2Error;->HTTP_1_1_REQUIRED:Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 326
    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->$VALUES:[Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 349
    invoke-static {}, Lio/grpc/internal/GrpcUtil$Http2Error;->buildHttp2CodeMap()[Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILio/grpc/Status;)V
    .locals 1
    .param p3, "code"    # I
    .param p4, "status"    # Lio/grpc/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 369
    iput p3, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->code:I

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HTTP/2 error code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lio/grpc/internal/GrpcUtil$Http2Error;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    .local p1, "description":Ljava/lang/String;
    invoke-virtual {p4}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p4}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    :cond_0
    invoke-virtual {p4, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->status:Lio/grpc/Status;

    .line 375
    return-void
.end method

.method private static buildHttp2CodeMap()[Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 8

    .line 352
    invoke-static {}, Lio/grpc/internal/GrpcUtil$Http2Error;->values()[Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v0

    .line 353
    .local v0, "errors":[Lio/grpc/internal/GrpcUtil$Http2Error;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->code()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 354
    .local v1, "size":I
    new-array v2, v1, [Lio/grpc/internal/GrpcUtil$Http2Error;

    .line 355
    .local v2, "http2CodeMap":[Lio/grpc/internal/GrpcUtil$Http2Error;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 356
    .local v5, "error":Lio/grpc/internal/GrpcUtil$Http2Error;
    invoke-virtual {v5}, Lio/grpc/internal/GrpcUtil$Http2Error;->code()J

    move-result-wide v6

    long-to-int v6, v6

    .line 357
    .local v6, "index":I
    aput-object v5, v2, v6

    .line 355
    .end local v5    # "error":Lio/grpc/internal/GrpcUtil$Http2Error;
    .end local v6    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    :cond_0
    return-object v2
.end method

.method public static forCode(J)Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 3
    .param p0, "code"    # J

    .line 398
    sget-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->codeMap:[Lio/grpc/internal/GrpcUtil$Http2Error;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    long-to-int v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 399
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static statusForCode(J)Lio/grpc/Status;
    .locals 5
    .param p0, "code"    # J

    .line 415
    invoke-static {p0, p1}, Lio/grpc/internal/GrpcUtil$Http2Error;->forCode(J)Lio/grpc/internal/GrpcUtil$Http2Error;

    move-result-object v0

    .line 416
    .local v0, "error":Lio/grpc/internal/GrpcUtil$Http2Error;
    if-nez v0, :cond_0

    .line 418
    sget-object v1, Lio/grpc/internal/GrpcUtil$Http2Error;->INTERNAL_ERROR:Lio/grpc/internal/GrpcUtil$Http2Error;

    invoke-virtual {v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->status()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    .line 419
    .local v1, "statusCode":Lio/grpc/Status$Code;
    invoke-virtual {v1}, Lio/grpc/Status$Code;->value()I

    move-result v2

    invoke-static {v2}, Lio/grpc/Status;->fromCodeValue(I)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized HTTP/2 error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 419
    return-object v2

    .line 423
    .end local v1    # "statusCode":Lio/grpc/Status$Code;
    :cond_0
    invoke-virtual {v0}, Lio/grpc/internal/GrpcUtil$Http2Error;->status()Lio/grpc/Status;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 326
    const-class v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/GrpcUtil$Http2Error;

    return-object v0
.end method

.method public static values()[Lio/grpc/internal/GrpcUtil$Http2Error;
    .locals 1

    .line 326
    sget-object v0, Lio/grpc/internal/GrpcUtil$Http2Error;->$VALUES:[Lio/grpc/internal/GrpcUtil$Http2Error;

    invoke-virtual {v0}, [Lio/grpc/internal/GrpcUtil$Http2Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/GrpcUtil$Http2Error;

    return-object v0
.end method


# virtual methods
.method public code()J
    .locals 2

    .line 381
    iget v0, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->code:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public status()Lio/grpc/Status;
    .locals 1

    .line 388
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$Http2Error;->status:Lio/grpc/Status;

    return-object v0
.end method
