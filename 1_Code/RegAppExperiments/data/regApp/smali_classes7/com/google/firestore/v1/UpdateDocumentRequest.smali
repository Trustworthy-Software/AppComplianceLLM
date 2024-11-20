.class public final Lcom/google/firestore/v1/UpdateDocumentRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UpdateDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/UpdateDocumentRequest;",
        "Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURRENT_DOCUMENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field public static final MASK_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_MASK_FIELD_NUMBER:I = 0x2


# instance fields
.field private currentDocument_:Lcom/google/firestore/v1/Precondition;

.field private document_:Lcom/google/firestore/v1/Document;

.field private mask_:Lcom/google/firestore/v1/DocumentMask;

.field private updateMask_:Lcom/google/firestore/v1/DocumentMask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 825
    new-instance v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;-><init>()V

    .line 828
    .local v0, "defaultInstance":Lcom/google/firestore/v1/UpdateDocumentRequest;
    sput-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 829
    const-class v1, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 831
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/UpdateDocumentRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Precondition;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Precondition;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearCurrentDocument()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearDocument()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearUpdateMask()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/UpdateDocumentRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->clearMask()V

    return-void
.end method

.method private clearCurrentDocument()V
    .locals 1

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 327
    return-void
.end method

.method private clearDocument()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 89
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 256
    return-void
.end method

.method private clearUpdateMask()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 180
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1

    .line 834
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method private mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 311
    invoke-static {v0}, Lcom/google/firestore/v1/Precondition;->newBuilder(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Precondition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Precondition$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Precondition$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Precondition;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    goto :goto_0

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 316
    :goto_0
    return-void
.end method

.method private mergeDocument(Lcom/google/firestore/v1/Document;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 73
    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 78
    :goto_0
    return-void
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 239
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 244
    :goto_0
    return-void
.end method

.method private mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 160
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 165
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 404
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/UpdateDocumentRequest;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 407
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/UpdateDocumentRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            ">;"
        }
    .end annotation

    .line 840
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 296
    return-void
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    .line 58
    return-void
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 223
    return-void
.end method

.method private setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iput-object p1, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 141
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 773
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 818
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 815
    :pswitch_0
    return-object v1

    .line 812
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 797
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 798
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/UpdateDocumentRequest;>;"
    if-nez v0, :cond_1

    .line 799
    const-class v1, Lcom/google/firestore/v1/UpdateDocumentRequest;

    monitor-enter v1

    .line 800
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/UpdateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 801
    if-nez v0, :cond_0

    .line 802
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 805
    sput-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 807
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 809
    :cond_1
    :goto_0
    return-object v0

    .line 794
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/UpdateDocumentRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    return-object v0

    .line 781
    :pswitch_4
    const-string v0, "document_"

    const-string v1, "updateMask_"

    const-string v2, "mask_"

    const-string v3, "currentDocument_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 787
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t"

    .line 790
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/UpdateDocumentRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 778
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;-><init>(Lcom/google/firestore/v1/UpdateDocumentRequest$1;)V

    return-object v0

    .line 775
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;-><init>()V

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

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->document_:Lcom/google/firestore/v1/Document;

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

    .line 195
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
