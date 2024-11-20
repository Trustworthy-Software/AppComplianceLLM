.class public final Lcom/google/firestore/v1/DocumentDelete;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentDelete.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentDeleteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentDelete$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentDelete;",
        "Lcom/google/firestore/v1/DocumentDelete$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentDeleteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentDelete;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x6


# instance fields
.field private document_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private removedTargetIdsMemoizedSerializedSize:I

.field private removedTargetIds_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 667
    new-instance v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentDelete;-><init>()V

    .line 670
    .local v0, "defaultInstance":Lcom/google/firestore/v1/DocumentDelete;
    sput-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    .line 671
    const-class v1, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 673
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/DocumentDelete;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIdsMemoizedSerializedSize:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 25
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentDelete;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/DocumentDelete;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->setDocument(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete;->clearDocument()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->setDocumentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/DocumentDelete;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/DocumentDelete;->setRemovedTargetIds(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/DocumentDelete;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->addRemovedTargetIds(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/DocumentDelete;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->addAllRemovedTargetIds(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/DocumentDelete;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete;->clearRemovedTargetIds()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/DocumentDelete;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentDelete;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method private addAllRemovedTargetIds(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete;->ensureRemovedTargetIdsIsMutable()V

    .line 178
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method private addRemovedTargetIds(I)V
    .locals 1
    .param p1, "value"    # I

    .line 164
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete;->ensureRemovedTargetIdsIsMutable()V

    .line 165
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 166
    return-void
.end method

.method private clearDocument()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getDocument()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 261
    return-void
.end method

.method private clearRemovedTargetIds()V
    .locals 1

    .line 189
    invoke-static {}, Lcom/google/firestore/v1/DocumentDelete;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 190
    return-void
.end method

.method private ensureRemovedTargetIdsIsMutable()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 136
    .local v0, "tmp":Lcom/google/protobuf/Internal$IntList;
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    nop

    .line 138
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    .line 140
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentDelete;
    .locals 1

    .line 676
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 245
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 250
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1

    .line 338
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/DocumentDelete$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 341
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/DocumentDelete;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/DocumentDelete;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/DocumentDelete;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentDelete;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentDelete;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentDelete;",
            ">;"
        }
    .end annotation

    .line 682
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentDelete;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private setDocumentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 88
    invoke-static {p1}, Lcom/google/firestore/v1/DocumentDelete;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 230
    return-void
.end method

.method private setRemovedTargetIds(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 152
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentDelete;->ensureRemovedTargetIdsIsMutable()V

    .line 153
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 154
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 657
    :pswitch_0
    return-object v1

    .line 654
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->PARSER:Lcom/google/protobuf/Parser;

    .line 640
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/DocumentDelete;>;"
    if-nez v0, :cond_1

    .line 641
    const-class v1, Lcom/google/firestore/v1/DocumentDelete;

    monitor-enter v1

    .line 642
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/DocumentDelete;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 643
    if-nez v0, :cond_0

    .line 644
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 647
    sput-object v0, Lcom/google/firestore/v1/DocumentDelete;->PARSER:Lcom/google/protobuf/Parser;

    .line 649
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 651
    :cond_1
    :goto_0
    return-object v0

    .line 636
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/DocumentDelete;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    return-object v0

    .line 624
    :pswitch_4
    const-string v0, "document_"

    const-string v1, "readTime_"

    const-string v2, "removedTargetIds_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 629
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0001\u0000\u0001\u0208\u0004\t\u0006\'"

    .line 632
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/DocumentDelete;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/DocumentDelete;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 621
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/DocumentDelete$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/DocumentDelete$Builder;-><init>(Lcom/google/firestore/v1/DocumentDelete$1;)V

    return-object v0

    .line 618
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/DocumentDelete;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentDelete;-><init>()V

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

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->document_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemovedTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 131
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->removedTargetIds_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentDelete;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
