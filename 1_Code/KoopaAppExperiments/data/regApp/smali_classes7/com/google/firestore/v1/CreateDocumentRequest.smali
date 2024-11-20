.class public final Lcom/google/firestore/v1/CreateDocumentRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CreateDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/CreateDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/CreateDocumentRequest;",
        "Lcom/google/firestore/v1/CreateDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CreateDocumentRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLLECTION_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_ID_FIELD_NUMBER:I = 0x3

.field public static final MASK_FIELD_NUMBER:I = 0x5

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/CreateDocumentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private collectionId_:Ljava/lang/String;

.field private documentId_:Ljava/lang/String;

.field private document_:Lcom/google/firestore/v1/Document;

.field private mask_:Lcom/google/firestore/v1/DocumentMask;

.field private parent_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 916
    new-instance v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;-><init>()V

    .line 919
    .local v0, "defaultInstance":Lcom/google/firestore/v1/CreateDocumentRequest;
    sput-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 920
    const-class v1, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 922
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/CreateDocumentRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->parent_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->collectionId_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->documentId_:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/CreateDocumentRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->mergeDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/CreateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->clearDocument()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/CreateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->clearMask()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/CreateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->clearParent()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/CreateDocumentRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setCollectionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/CreateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/CreateDocumentRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setDocumentId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/CreateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->clearDocumentId()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->setDocumentIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/CreateDocumentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->collectionId_:Ljava/lang/String;

    .line 151
    return-void
.end method

.method private clearDocument()V
    .locals 1

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 303
    return-void
.end method

.method private clearDocumentId()V
    .locals 1

    .line 221
    invoke-static {}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/CreateDocumentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->documentId_:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 379
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/CreateDocumentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->parent_:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1

    .line 925
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method private mergeDocument(Lcom/google/firestore/v1/Document;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 288
    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    goto :goto_0

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 293
    :goto_0
    return-void
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 362
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 364
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 367
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1

    .line 456
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/CreateDocumentRequest;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 459
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/CreateDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 384
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CreateDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/CreateDocumentRequest;",
            ">;"
        }
    .end annotation

    .line 931
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCollectionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 139
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->collectionId_:Ljava/lang/String;

    .line 140
    return-void
.end method

.method private setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 162
    invoke-static {p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 163
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->collectionId_:Ljava/lang/String;

    .line 165
    return-void
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 274
    return-void
.end method

.method private setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->documentId_:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private setDocumentIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 234
    invoke-static {p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 235
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->documentId_:Ljava/lang/String;

    .line 237
    return-void
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 343
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 346
    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->parent_:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 95
    invoke-static {p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->parent_:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 863
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 909
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 906
    :pswitch_0
    return-object v1

    .line 903
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 888
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 889
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/CreateDocumentRequest;>;"
    if-nez v0, :cond_1

    .line 890
    const-class v1, Lcom/google/firestore/v1/CreateDocumentRequest;

    monitor-enter v1

    .line 891
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/CreateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 892
    if-nez v0, :cond_0

    .line 893
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 896
    sput-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 898
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 900
    :cond_1
    :goto_0
    return-object v0

    .line 885
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/CreateDocumentRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    return-object v0

    .line 871
    :pswitch_4
    const-string v0, "parent_"

    const-string v1, "collectionId_"

    const-string v2, "documentId_"

    const-string v3, "document_"

    const-string v4, "mask_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 878
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\t\u0005\t"

    .line 881
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/CreateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 868
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;-><init>(Lcom/google/firestore/v1/CreateDocumentRequest$1;)V

    return-object v0

    .line 865
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;-><init>()V

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

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->collectionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->collectionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->documentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->documentId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMask()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
