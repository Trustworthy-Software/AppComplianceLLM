.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQueryOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x1

.field public static final RESPONSE_FIELD_NUMBER:I = 0x2


# instance fields
.field private request_:Lcom/google/firestore/v1/RunQueryRequest;

.field private response_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6081
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;-><init>()V

    .line 6084
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 6085
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6087
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5544
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5545
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5546
    return-void
.end method

.method static synthetic access$10100()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1

    .line 5539
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;Lcom/google/firestore/v1/RunQueryRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/RunQueryRequest;

    .line 5539
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->setRequest(Lcom/google/firestore/v1/RunQueryRequest;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;Lcom/google/firestore/v1/RunQueryRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/RunQueryRequest;

    .line 5539
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->mergeRequest(Lcom/google/firestore/v1/RunQueryRequest;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 5539
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->clearRequest()V

    return-void
.end method

.method static synthetic access$10500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;ILcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 5539
    invoke-direct {p0, p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->setResponse(ILcom/google/firestore/v1/RunQueryResponse;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 5539
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->addResponse(Lcom/google/firestore/v1/RunQueryResponse;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;ILcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 5539
    invoke-direct {p0, p1, p2}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->addResponse(ILcom/google/firestore/v1/RunQueryResponse;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 5539
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->addAllResponse(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 5539
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->clearResponse()V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .param p1, "x1"    # I

    .line 5539
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->removeResponse(I)V

    return-void
.end method

.method private addAllResponse(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;)V"
        }
    .end annotation

    .line 5705
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/RunQueryResponse;>;"
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->ensureResponseIsMutable()V

    .line 5706
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 5708
    return-void
.end method

.method private addResponse(ILcom/google/firestore/v1/RunQueryResponse;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 5692
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5693
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->ensureResponseIsMutable()V

    .line 5694
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 5695
    return-void
.end method

.method private addResponse(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 5679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5680
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->ensureResponseIsMutable()V

    .line 5681
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 5682
    return-void
.end method

.method private clearRequest()V
    .locals 1

    .line 5589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    .line 5591
    return-void
.end method

.method private clearResponse()V
    .locals 1

    .line 5717
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5718
    return-void
.end method

.method private ensureResponseIsMutable()V
    .locals 2

    .line 5651
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5652
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/RunQueryResponse;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5653
    nop

    .line 5654
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5656
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1

    .line 6090
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method private mergeRequest(Lcom/google/firestore/v1/RunQueryRequest;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/RunQueryRequest;

    .line 5576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5577
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    if-eqz v0, :cond_0

    .line 5578
    invoke-static {}, Lcom/google/firestore/v1/RunQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5579
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    .line 5580
    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->newBuilder(Lcom/google/firestore/v1/RunQueryRequest;)Lcom/google/firestore/v1/RunQueryRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    goto :goto_0

    .line 5582
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    .line 5585
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;
    .locals 1

    .line 5806
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    .line 5809
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5783
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5789
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5747
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5754
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5794
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5801
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5771
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5778
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5734
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5741
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5759
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5766
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;",
            ">;"
        }
    .end annotation

    .line 6096
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeResponse(I)V
    .locals 1
    .param p1, "index"    # I

    .line 5727
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->ensureResponseIsMutable()V

    .line 5728
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 5729
    return-void
.end method

.method private setRequest(Lcom/google/firestore/v1/RunQueryRequest;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/RunQueryRequest;

    .line 5567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5568
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    .line 5570
    return-void
.end method

.method private setResponse(ILcom/google/firestore/v1/RunQueryResponse;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 5667
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5668
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->ensureResponseIsMutable()V

    .line 5669
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5670
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 6030
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6071
    :pswitch_0
    return-object v1

    .line 6068
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 6053
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 6054
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;>;"
    if-nez v0, :cond_1

    .line 6055
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    monitor-enter v1

    .line 6056
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 6057
    if-nez v0, :cond_0

    .line 6058
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 6061
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 6063
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6065
    :cond_1
    :goto_0
    return-object v0

    .line 6050
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    return-object v0

    .line 6038
    :pswitch_4
    const-string v0, "request_"

    const-string v1, "response_"

    const-class v2, Lcom/google/firestore/v1/RunQueryResponse;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 6043
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b"

    .line 6046
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 6035
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 6032
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;-><init>()V

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

.method public getRequest()Lcom/google/firestore/v1/RunQueryRequest;
    .locals 1

    .line 5561
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/RunQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryRequest;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponse(I)Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1
    .param p1, "index"    # I

    .line 5637
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    return-object v0
.end method

.method public getResponseCount()I
    .locals 1

    .line 5626
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation

    .line 5604
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getResponseOrBuilder(I)Lcom/google/firestore/v1/RunQueryResponseOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 5648
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponseOrBuilder;

    return-object v0
.end method

.method public getResponseOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/RunQueryResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5615
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->response_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 5554
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RunQuery;->request_:Lcom/google/firestore/v1/RunQueryRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
