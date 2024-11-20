.class public final Lcom/google/firestore/v1/ListenRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListenRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListenRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListenRequest$Builder;,
        Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;,
        Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListenRequest;",
        "Lcom/google/firestore/v1/ListenRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADD_TARGET_FIELD_NUMBER:I = 0x2

.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

.field public static final LABELS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_TARGET_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetChangeCase_:I

.field private targetChange_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 869
    new-instance v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenRequest;-><init>()V

    .line 872
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ListenRequest;
    sput-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    .line 873
    const-class v1, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 875
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ListenRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 271
    nop

    .line 273
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ListenRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->clearTargetChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->getMutableLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListenRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ListenRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->clearDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ListenRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setDatabaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setAddTarget(Lcom/google/firestore/v1/Target;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->mergeAddTarget(Lcom/google/firestore/v1/Target;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ListenRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->clearAddTarget()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListenRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListenRequest;->setRemoveTarget(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ListenRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListenRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->clearRemoveTarget()V

    return-void
.end method

.method private clearAddTarget()V
    .locals 2

    .line 200
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 204
    :cond_0
    return-void
.end method

.method private clearDatabase()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/google/firestore/v1/ListenRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 119
    return-void
.end method

.method private clearRemoveTarget()V
    .locals 2

    .line 254
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 258
    :cond_0
    return-void
.end method

.method private clearTargetChange()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListenRequest;
    .locals 1

    .line 878
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeAddTarget(Lcom/google/firestore/v1/Target;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/google/firestore/v1/Target;->getDefaultInstance()Lcom/google/firestore/v1/Target;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target;

    invoke-static {v0}, Lcom/google/firestore/v1/Target;->newBuilder(Lcom/google/firestore/v1/Target;)Lcom/google/firestore/v1/Target$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 190
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 191
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 448
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ListenRequest;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ListenRequest;

    .line 451
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ListenRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ListenRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ListenRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListenRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListenRequest;",
            ">;"
        }
    .end annotation

    .line 884
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddTarget(Lcom/google/firestore/v1/Target;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 173
    return-void
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private setDatabaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 131
    invoke-static {p1}, Lcom/google/firestore/v1/ListenRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private setRemoveTarget(I)V
    .locals 1
    .param p1, "value"    # I

    .line 243
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    .line 245
    return-void
.end method


# virtual methods
.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 302
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 815
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 859
    :pswitch_0
    return-object v1

    .line 856
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 841
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 842
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListenRequest;>;"
    if-nez v0, :cond_1

    .line 843
    const-class v1, Lcom/google/firestore/v1/ListenRequest;

    monitor-enter v1

    .line 844
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 845
    if-nez v0, :cond_0

    .line 846
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 849
    sput-object v0, Lcom/google/firestore/v1/ListenRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 851
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 853
    :cond_1
    :goto_0
    return-object v0

    .line 838
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListenRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    return-object v0

    .line 823
    :pswitch_4
    const-string v1, "targetChange_"

    const-string v2, "targetChangeCase_"

    const-string v3, "database_"

    const-class v4, Lcom/google/firestore/v1/Target;

    const-string v5, "labels_"

    sget-object v6, Lcom/google/firestore/v1/ListenRequest$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 831
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u0002<\u0000\u00037\u0000\u00042"

    .line 834
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ListenRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ListenRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 820
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ListenRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ListenRequest$Builder;-><init>(Lcom/google/firestore/v1/ListenRequest$1;)V

    return-object v0

    .line 817
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListenRequest;-><init>()V

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

.method public getAddTarget()Lcom/google/firestore/v1/Target;
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target;->getDefaultInstance()Lcom/google/firestore/v1/Target;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->database_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    nop

    .line 323
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 322
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 338
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 339
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 340
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 354
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 355
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 356
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 357
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getRemoveTarget()I
    .locals 2

    .line 229
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChange_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetChangeCase()Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->forNumber(I)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAddTarget()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoveTarget()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest;->targetChangeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
