.class public final Lcom/google/firebase/firestore/proto/TargetGlobal;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TargetGlobal.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetGlobalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/TargetGlobal;",
        "Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/TargetGlobalOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

.field public static final HIGHEST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final HIGHEST_TARGET_ID_FIELD_NUMBER:I = 0x1

.field public static final LAST_REMOTE_SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/TargetGlobal;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_COUNT_FIELD_NUMBER:I = 0x4


# instance fields
.field private highestListenSequenceNumber_:J

.field private highestTargetId_:I

.field private lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private targetCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 640
    new-instance v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/TargetGlobal;-><init>()V

    .line 643
    .local v0, "defaultInstance":Lcom/google/firebase/firestore/proto/TargetGlobal;
    sput-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    .line 644
    const-class v1, Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 646
    .end local v0    # "defaultInstance":Lcom/google/firebase/firestore/proto/TargetGlobal;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/TargetGlobal;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/TargetGlobal;->setHighestTargetId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/TargetGlobal;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->clearHighestTargetId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/proto/TargetGlobal;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;
    .param p1, "x1"    # J

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/TargetGlobal;->setHighestListenSequenceNumber(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/TargetGlobal;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->clearHighestListenSequenceNumber()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/proto/TargetGlobal;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/TargetGlobal;->setLastRemoteSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/proto/TargetGlobal;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/TargetGlobal;->mergeLastRemoteSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/firestore/proto/TargetGlobal;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->clearLastRemoteSnapshotVersion()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/proto/TargetGlobal;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/TargetGlobal;->setTargetCount(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/firestore/proto/TargetGlobal;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/TargetGlobal;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->clearTargetCount()V

    return-void
.end method

.method private clearHighestListenSequenceNumber()V
    .locals 2

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->highestListenSequenceNumber_:J

    .line 101
    return-void
.end method

.method private clearHighestTargetId()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->highestTargetId_:I

    .line 60
    return-void
.end method

.method private clearLastRemoteSnapshotVersion()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 202
    return-void
.end method

.method private clearTargetCount()V
    .locals 1

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->targetCount_:I

    .line 240
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1

    .line 649
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method private mergeLastRemoteSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 180
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 185
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;
    .locals 1

    .line 317
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/TargetGlobal;)Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/firestore/proto/TargetGlobal;

    .line 320
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/firestore/proto/TargetGlobal;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/TargetGlobal;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/TargetGlobal;",
            ">;"
        }
    .end annotation

    .line 655
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHighestListenSequenceNumber(J)V
    .locals 0
    .param p1, "value"    # J

    .line 88
    iput-wide p1, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->highestListenSequenceNumber_:J

    .line 89
    return-void
.end method

.method private setHighestTargetId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 47
    iput p1, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->highestTargetId_:I

    .line 48
    return-void
.end method

.method private setLastRemoteSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 159
    return-void
.end method

.method private setTargetCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 228
    iput p1, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->targetCount_:I

    .line 229
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 633
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 630
    :pswitch_0
    return-object v1

    .line 627
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 612
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->PARSER:Lcom/google/protobuf/Parser;

    .line 613
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/TargetGlobal;>;"
    if-nez v0, :cond_1

    .line 614
    const-class v1, Lcom/google/firebase/firestore/proto/TargetGlobal;

    monitor-enter v1

    .line 615
    :try_start_0
    sget-object v2, Lcom/google/firebase/firestore/proto/TargetGlobal;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 616
    if-nez v0, :cond_0

    .line 617
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 620
    sput-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->PARSER:Lcom/google/protobuf/Parser;

    .line 622
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 624
    :cond_1
    :goto_0
    return-object v0

    .line 609
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/TargetGlobal;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    return-object v0

    .line 596
    :pswitch_4
    const-string v0, "highestTargetId_"

    const-string v1, "highestListenSequenceNumber_"

    const-string v2, "lastRemoteSnapshotVersion_"

    const-string v3, "targetCount_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\t\u0004\u0004"

    .line 605
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/firestore/proto/TargetGlobal;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/proto/TargetGlobal;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 593
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/proto/TargetGlobal$Builder;-><init>(Lcom/google/firebase/firestore/proto/TargetGlobal$1;)V

    return-object v0

    .line 590
    :pswitch_6
    new-instance v0, Lcom/google/firebase/firestore/proto/TargetGlobal;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/TargetGlobal;-><init>()V

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

.method public getHighestListenSequenceNumber()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->highestListenSequenceNumber_:J

    return-wide v0
.end method

.method public getHighestTargetId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->highestTargetId_:I

    return v0
.end method

.method public getLastRemoteSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTargetCount()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->targetCount_:I

    return v0
.end method

.method public hasLastRemoteSnapshotVersion()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/TargetGlobal;->lastRemoteSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
