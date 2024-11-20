.class public final Lcom/google/firestore/v1/ListCollectionIdsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListCollectionIdsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListCollectionIdsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
        "Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListCollectionIdsRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

.field public static final PAGE_SIZE_FIELD_NUMBER:I = 0x2

.field public static final PAGE_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pageSize_:I

.field private pageToken_:Ljava/lang/String;

.field private parent_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 569
    new-instance v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;-><init>()V

    .line 572
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ListCollectionIdsRequest;
    sput-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    .line 573
    const-class v1, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 575
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ListCollectionIdsRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parent_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageToken_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ListCollectionIdsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListCollectionIdsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->clearParent()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ListCollectionIdsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ListCollectionIdsRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->setPageSize(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListCollectionIdsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->clearPageSize()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ListCollectionIdsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->setPageToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ListCollectionIdsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->clearPageToken()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListCollectionIdsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->setPageTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearPageSize()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageSize_:I

    .line 140
    return-void
.end method

.method private clearPageToken()V
    .locals 1

    .line 196
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageToken_:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parent_:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1

    .line 578
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;
    .locals 1

    .line 289
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ListCollectionIdsRequest;)Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;

    .line 292
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListCollectionIdsRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
            ">;"
        }
    .end annotation

    .line 584
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPageSize(I)V
    .locals 0
    .param p1, "value"    # I

    .line 128
    iput p1, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageSize_:I

    .line 129
    return-void
.end method

.method private setPageToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageToken_:Ljava/lang/String;

    .line 185
    return-void
.end method

.method private setPageTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 209
    invoke-static {p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 210
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageToken_:Ljava/lang/String;

    .line 212
    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parent_:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 99
    invoke-static {p1}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parent_:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 562
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 559
    :pswitch_0
    return-object v1

    .line 556
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 541
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 542
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListCollectionIdsRequest;>;"
    if-nez v0, :cond_1

    .line 543
    const-class v1, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    monitor-enter v1

    .line 544
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/ListCollectionIdsRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 545
    if-nez v0, :cond_0

    .line 546
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 549
    sput-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 551
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 553
    :cond_1
    :goto_0
    return-object v0

    .line 538
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListCollectionIdsRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    return-object v0

    .line 526
    :pswitch_4
    const-string v0, "parent_"

    const-string v1, "pageSize_"

    const-string v2, "pageToken_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 531
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0004\u0003\u0208"

    .line 534
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ListCollectionIdsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 523
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ListCollectionIdsRequest$Builder;-><init>(Lcom/google/firestore/v1/ListCollectionIdsRequest$1;)V

    return-object v0

    .line 520
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ListCollectionIdsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListCollectionIdsRequest;-><init>()V

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

.method public getPageSize()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageSize_:I

    return v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->pageToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firestore/v1/ListCollectionIdsRequest;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
