.class public final Lcom/google/firestore/v1/GetDocumentRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GetDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/GetDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/GetDocumentRequest$Builder;,
        Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/GetDocumentRequest;",
        "Lcom/google/firestore/v1/GetDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/GetDocumentRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

.field public static final MASK_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/GetDocumentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x5

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x3


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private mask_:Lcom/google/firestore/v1/DocumentMask;

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 800
    new-instance v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/GetDocumentRequest;-><init>()V

    .line 803
    .local v0, "defaultInstance":Lcom/google/firestore/v1/GetDocumentRequest;
    sput-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    .line 804
    const-class v1, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 806
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/GetDocumentRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->name_:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/GetDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/GetDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/GetDocumentRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/GetDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest;->clearName()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/GetDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest;->clearMask()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/GetDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest;->clearTransaction()V

    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 210
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/google/firestore/v1/GetDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/GetDocumentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->name_:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 336
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 340
    :cond_0
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 261
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 265
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1

    .line 809
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 193
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 198
    :goto_0
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 319
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 325
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 326
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 417
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/GetDocumentRequest;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 420
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/GetDocumentRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/GetDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/GetDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/GetDocumentRequest;",
            ">;"
        }
    .end annotation

    .line 815
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iput-object p1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 177
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->name_:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-static {p1}, Lcom/google/firestore/v1/GetDocumentRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->name_:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    iput-object p1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 306
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 307
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 250
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    .line 251
    iput-object p1, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    .line 252
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 747
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 793
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 790
    :pswitch_0
    return-object v1

    .line 787
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 772
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 773
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/GetDocumentRequest;>;"
    if-nez v0, :cond_1

    .line 774
    const-class v1, Lcom/google/firestore/v1/GetDocumentRequest;

    monitor-enter v1

    .line 775
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/GetDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 776
    if-nez v0, :cond_0

    .line 777
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 780
    sput-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 782
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 784
    :cond_1
    :goto_0
    return-object v0

    .line 769
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/GetDocumentRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    return-object v0

    .line 755
    :pswitch_4
    const-string v0, "consistencySelector_"

    const-string v1, "consistencySelectorCase_"

    const-string v2, "name_"

    const-string v3, "mask_"

    const-class v4, Lcom/google/protobuf/Timestamp;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 762
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0001\u0000\u0001\u0005\u0004\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003=\u0000\u0005<\u0000"

    .line 765
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/GetDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/GetDocumentRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 752
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;-><init>(Lcom/google/firestore/v1/GetDocumentRequest$1;)V

    return-object v0

    .line 749
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/GetDocumentRequest;-><init>()V

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

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 290
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 293
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 235
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 238
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 278
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 2

    .line 223
    iget v0, p0, Lcom/google/firestore/v1/GetDocumentRequest;->consistencySelectorCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
