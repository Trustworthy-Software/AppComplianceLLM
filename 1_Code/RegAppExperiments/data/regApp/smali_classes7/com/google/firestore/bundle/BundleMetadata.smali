.class public final Lcom/google/firestore/bundle/BundleMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BundleMetadata.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundleMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/BundleMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/BundleMetadata;",
        "Lcom/google/firestore/bundle/BundleMetadata$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundleMetadataOrBuilder;"
    }
.end annotation


# static fields
.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_BYTES_FIELD_NUMBER:I = 0x5

.field public static final TOTAL_DOCUMENTS_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private createTime_:Lcom/google/protobuf/Timestamp;

.field private id_:Ljava/lang/String;

.field private totalBytes_:J

.field private totalDocuments_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 687
    new-instance v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundleMetadata;-><init>()V

    .line 690
    .local v0, "defaultInstance":Lcom/google/firestore/bundle/BundleMetadata;
    sput-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    .line 691
    const-class v1, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 693
    .end local v0    # "defaultInstance":Lcom/google/firestore/bundle/BundleMetadata;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->id_:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/BundleMetadata;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleMetadata;->clearTotalDocuments()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/bundle/BundleMetadata;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # J

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/bundle/BundleMetadata;->setTotalBytes(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleMetadata;->clearTotalBytes()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleMetadata;->clearId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->setCreateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/BundleMetadata;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->mergeCreateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleMetadata;->clearCreateTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/BundleMetadata;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->setVersion(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleMetadata;->clearVersion()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/BundleMetadata;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleMetadata;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->setTotalDocuments(I)V

    return-void
.end method

.method private clearCreateTime()V
    .locals 1

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 152
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/google/firestore/bundle/BundleMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->id_:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private clearTotalBytes()V
    .locals 2

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->totalBytes_:J

    .line 266
    return-void
.end method

.method private clearTotalDocuments()V
    .locals 1

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->totalDocuments_:I

    .line 228
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->version_:I

    .line 190
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1

    .line 696
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method private mergeCreateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 137
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 142
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1

    .line 343
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/BundleMetadata;)Lcom/google/firestore/bundle/BundleMetadata$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 346
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/BundleMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/BundleMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/BundleMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleMetadata;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundleMetadata;",
            ">;"
        }
    .end annotation

    .line 702
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCreateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    .line 123
    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleMetadata;->id_:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 83
    invoke-static {p1}, Lcom/google/firestore/bundle/BundleMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->id_:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private setTotalBytes(J)V
    .locals 0
    .param p1, "value"    # J

    .line 254
    iput-wide p1, p0, Lcom/google/firestore/bundle/BundleMetadata;->totalBytes_:J

    .line 255
    return-void
.end method

.method private setTotalDocuments(I)V
    .locals 0
    .param p1, "value"    # I

    .line 216
    iput p1, p0, Lcom/google/firestore/bundle/BundleMetadata;->totalDocuments_:I

    .line 217
    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .param p1, "value"    # I

    .line 178
    iput p1, p0, Lcom/google/firestore/bundle/BundleMetadata;->version_:I

    .line 179
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 677
    :pswitch_0
    return-object v1

    .line 674
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 659
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 660
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundleMetadata;>;"
    if-nez v0, :cond_1

    .line 661
    const-class v1, Lcom/google/firestore/bundle/BundleMetadata;

    monitor-enter v1

    .line 662
    :try_start_0
    sget-object v2, Lcom/google/firestore/bundle/BundleMetadata;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 663
    if-nez v0, :cond_0

    .line 664
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 667
    sput-object v0, Lcom/google/firestore/bundle/BundleMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 669
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 671
    :cond_1
    :goto_0
    return-object v0

    .line 656
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundleMetadata;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0

    .line 642
    :pswitch_4
    const-string v0, "id_"

    const-string v1, "createTime_"

    const-string v2, "version_"

    const-string v3, "totalDocuments_"

    const-string v4, "totalBytes_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 649
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\u000b\u0004\u000b\u0005\u0003"

    .line 652
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/bundle/BundleMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/bundle/BundleMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 639
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/bundle/BundleMetadata$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/bundle/BundleMetadata$Builder;-><init>(Lcom/google/firestore/bundle/BundleMetadata$1;)V

    return-object v0

    .line 636
    :pswitch_6
    new-instance v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundleMetadata;-><init>()V

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

.method public getCreateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->totalBytes_:J

    return-wide v0
.end method

.method public getTotalDocuments()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->totalDocuments_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->version_:I

    return v0
.end method

.method public hasCreateTime()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleMetadata;->createTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
