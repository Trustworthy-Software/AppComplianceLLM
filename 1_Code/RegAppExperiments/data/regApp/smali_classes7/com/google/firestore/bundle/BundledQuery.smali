.class public final Lcom/google/firestore/bundle/BundledQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BundledQuery.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundledQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/BundledQuery$Builder;,
        Lcom/google/firestore/bundle/BundledQuery$QueryTypeCase;,
        Lcom/google/firestore/bundle/BundledQuery$LimitType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/BundledQuery;",
        "Lcom/google/firestore/bundle/BundledQuery$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundledQueryOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

.field public static final LIMIT_TYPE_FIELD_NUMBER:I = 0x3

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundledQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field private limitType_:I

.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 693
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledQuery;-><init>()V

    .line 696
    .local v0, "defaultInstance":Lcom/google/firestore/bundle/BundledQuery;
    sput-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    .line 697
    const-class v1, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 699
    .end local v0    # "defaultInstance":Lcom/google/firestore/bundle/BundledQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->parent_:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/BundledQuery;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledQuery;->clearQueryType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledQuery;->clearLimitType()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/BundledQuery;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledQuery;->clearParent()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledQuery;->clearStructuredQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/BundledQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->setLimitTypeValue(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/bundle/BundledQuery$LimitType;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledQuery;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->setLimitType(Lcom/google/firestore/bundle/BundledQuery$LimitType;)V

    return-void
.end method

.method private clearLimitType()V
    .locals 1

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundledQuery;->limitType_:I

    .line 333
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 206
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->parent_:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private clearQueryType()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private clearStructuredQuery()V
    .locals 2

    .line 287
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    .line 291
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;
    .locals 1

    .line 702
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method private mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    .line 271
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->newBuilder(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    goto :goto_0

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    .line 277
    :goto_0
    iput v1, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    .line 278
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1

    .line 410
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 413
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/BundledQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/BundledQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/BundledQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundledQuery;",
            ">;"
        }
    .end annotation

    .line 708
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLimitType(Lcom/google/firestore/bundle/BundledQuery$LimitType;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 324
    invoke-virtual {p1}, Lcom/google/firestore/bundle/BundledQuery$LimitType;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/firestore/bundle/BundledQuery;->limitType_:I

    .line 326
    return-void
.end method

.method private setLimitTypeValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 317
    iput p1, p0, Lcom/google/firestore/bundle/BundledQuery;->limitType_:I

    .line 318
    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledQuery;->parent_:Ljava/lang/String;

    .line 196
    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 218
    invoke-static {p1}, Lcom/google/firestore/bundle/BundledQuery;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 219
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->parent_:Ljava/lang/String;

    .line 221
    return-void
.end method

.method private setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    .line 259
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    .line 260
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 686
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 683
    :pswitch_0
    return-object v1

    .line 680
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 665
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 666
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundledQuery;>;"
    if-nez v0, :cond_1

    .line 667
    const-class v1, Lcom/google/firestore/bundle/BundledQuery;

    monitor-enter v1

    .line 668
    :try_start_0
    sget-object v2, Lcom/google/firestore/bundle/BundledQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 669
    if-nez v0, :cond_0

    .line 670
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 673
    sput-object v0, Lcom/google/firestore/bundle/BundledQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 675
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 677
    :cond_1
    :goto_0
    return-object v0

    .line 662
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundledQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    return-object v0

    .line 648
    :pswitch_4
    const-string v0, "queryType_"

    const-string v1, "queryTypeCase_"

    const-string v2, "parent_"

    const-class v3, Lcom/google/firestore/v1/StructuredQuery;

    const-string v4, "limitType_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 655
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002<\u0000\u0003\u000c"

    .line 658
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/bundle/BundledQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/bundle/BundledQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 645
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/bundle/BundledQuery$Builder;-><init>(Lcom/google/firestore/bundle/BundledQuery$1;)V

    return-object v0

    .line 642
    :pswitch_6
    new-instance v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledQuery;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLimitType()Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 2

    .line 309
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->limitType_:I

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery$LimitType;->forNumber(I)Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    .line 310
    .local v0, "result":Lcom/google/firestore/bundle/BundledQuery$LimitType;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firestore/bundle/BundledQuery$LimitType;->UNRECOGNIZED:Lcom/google/firestore/bundle/BundledQuery$LimitType;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getLimitTypeValue()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->limitType_:I

    return v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/bundle/BundledQuery$QueryTypeCase;
    .locals 1

    .line 147
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery$QueryTypeCase;->forNumber(I)Lcom/google/firestore/bundle/BundledQuery$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 2

    .line 244
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 247
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 2

    .line 233
    iget v0, p0, Lcom/google/firestore/bundle/BundledQuery;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
