.class public final Lcom/google/firestore/bundle/BundleElement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BundleElement.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundleElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/BundleElement$Builder;,
        Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/BundleElement;",
        "Lcom/google/firestore/bundle/BundleElement$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundleElementOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x4

.field public static final DOCUMENT_METADATA_FIELD_NUMBER:I = 0x3

.field public static final METADATA_FIELD_NUMBER:I = 0x1

.field public static final NAMED_QUERY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundleElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elementTypeCase_:I

.field private elementType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 639
    new-instance v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundleElement;-><init>()V

    .line 642
    .local v0, "defaultInstance":Lcom/google/firestore/bundle/BundleElement;
    sput-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    .line 643
    const-class v1, Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 645
    .end local v0    # "defaultInstance":Lcom/google/firestore/bundle/BundleElement;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/BundleElement;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/BundleElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement;->clearElementType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/bundle/BundleElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement;->clearDocumentMetadata()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->setDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->mergeDocument(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/bundle/BundleElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement;->clearDocument()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->setMetadata(Lcom/google/firestore/bundle/BundleMetadata;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->mergeMetadata(Lcom/google/firestore/bundle/BundleMetadata;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/BundleElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement;->clearMetadata()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->setNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->mergeNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/BundleElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundleElement;->clearNamedQuery()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->setDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/BundleElement;Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundleElement;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundleElement;->mergeDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V

    return-void
.end method

.method private clearDocument()V
    .locals 2

    .line 265
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 269
    :cond_0
    return-void
.end method

.method private clearDocumentMetadata()V
    .locals 2

    .line 215
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 219
    :cond_0
    return-void
.end method

.method private clearElementType()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private clearMetadata()V
    .locals 2

    .line 115
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 119
    :cond_0
    return-void
.end method

.method private clearNamedQuery()V
    .locals 2

    .line 165
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 169
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/BundleElement;
    .locals 1

    .line 648
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method private mergeDocument(Lcom/google/firestore/v1/Document;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 253
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    goto :goto_0

    .line 257
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 259
    :goto_0
    iput v1, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 260
    return-void
.end method

.method private mergeDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->newBuilder(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    goto :goto_0

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 209
    :goto_0
    iput v1, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 210
    return-void
.end method

.method private mergeMetadata(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/google/firestore/bundle/BundleMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundleMetadata;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleMetadata;->newBuilder(Lcom/google/firestore/bundle/BundleMetadata;)Lcom/google/firestore/bundle/BundleMetadata$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleMetadata$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 109
    :goto_0
    iput v1, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 110
    return-void
.end method

.method private mergeNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/google/firestore/bundle/NamedQuery;->getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/NamedQuery;->newBuilder(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/NamedQuery$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/NamedQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 159
    :goto_0
    iput v1, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 160
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1

    .line 346
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/BundleElement;)Lcom/google/firestore/bundle/BundleElement$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/bundle/BundleElement;

    .line 349
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/BundleElement;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/BundleElement;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/BundleElement;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundleElement;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundleElement;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundleElement;",
            ">;"
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundleElement;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocument(Lcom/google/firestore/v1/Document;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 245
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 246
    return-void
.end method

.method private setDocumentMetadata(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 196
    return-void
.end method

.method private setMetadata(Lcom/google/firestore/bundle/BundleMetadata;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundleMetadata;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 96
    return-void
.end method

.method private setNamedQuery(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    iput-object p1, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    .line 145
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    .line 146
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/google/firestore/bundle/BundleElement$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 632
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 629
    :pswitch_0
    return-object v1

    .line 626
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 611
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->PARSER:Lcom/google/protobuf/Parser;

    .line 612
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundleElement;>;"
    if-nez v0, :cond_1

    .line 613
    const-class v1, Lcom/google/firestore/bundle/BundleElement;

    monitor-enter v1

    .line 614
    :try_start_0
    sget-object v2, Lcom/google/firestore/bundle/BundleElement;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 615
    if-nez v0, :cond_0

    .line 616
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 619
    sput-object v0, Lcom/google/firestore/bundle/BundleElement;->PARSER:Lcom/google/protobuf/Parser;

    .line 621
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 623
    :cond_1
    :goto_0
    return-object v0

    .line 608
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundleElement;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    return-object v0

    .line 593
    :pswitch_4
    const-string v1, "elementType_"

    const-string v2, "elementTypeCase_"

    const-class v3, Lcom/google/firestore/bundle/BundleMetadata;

    const-class v4, Lcom/google/firestore/bundle/NamedQuery;

    const-class v5, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    const-class v6, Lcom/google/firestore/v1/Document;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 601
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000"

    .line 604
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/bundle/BundleElement;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundleElement;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/bundle/BundleElement;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 590
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/bundle/BundleElement$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/bundle/BundleElement$Builder;-><init>(Lcom/google/firestore/bundle/BundleElement$1;)V

    return-object v0

    .line 587
    :pswitch_6
    new-instance v0, Lcom/google/firestore/bundle/BundleElement;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundleElement;-><init>()V

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

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 2

    .line 234
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0

    .line 237
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentMetadata()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 2

    .line 184
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getElementTypeCase()Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;->forNumber(I)Lcom/google/firestore/bundle/BundleElement$ElementTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firestore/bundle/BundleMetadata;
    .locals 2

    .line 84
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/bundle/BundleMetadata;

    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Lcom/google/firestore/bundle/BundleMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundleMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNamedQuery()Lcom/google/firestore/bundle/NamedQuery;
    .locals 2

    .line 134
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/google/firestore/bundle/NamedQuery;->getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 2

    .line 227
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentMetadata()Z
    .locals 2

    .line 177
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNamedQuery()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/google/firestore/bundle/BundleElement;->elementTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
