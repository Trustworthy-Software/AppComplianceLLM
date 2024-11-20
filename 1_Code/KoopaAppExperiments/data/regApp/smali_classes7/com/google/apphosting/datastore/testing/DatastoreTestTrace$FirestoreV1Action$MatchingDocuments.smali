.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocumentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchingDocuments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocumentsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

.field public static final LISTEN_RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final MATCHING_DOCUMENTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listenResponse_:Lcom/google/firestore/v1/ListenResponse;

.field private matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7260
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;-><init>()V

    .line 7263
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 7264
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7266
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6822
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6823
    return-void
.end method

.method static synthetic access$12400()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1

    .line 6817
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .param p1, "x1"    # Lcom/google/firestore/v1/ListenResponse;

    .line 6817
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->setListenResponse(Lcom/google/firestore/v1/ListenResponse;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .param p1, "x1"    # Lcom/google/firestore/v1/ListenResponse;

    .line 6817
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->mergeListenResponse(Lcom/google/firestore/v1/ListenResponse;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 6817
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->clearListenResponse()V

    return-void
.end method

.method static synthetic access$12800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .param p1, "x1"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 6817
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->setMatchingDocuments(Lcom/google/firestore/v1/RunQueryResponse;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .param p1, "x1"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 6817
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->mergeMatchingDocuments(Lcom/google/firestore/v1/RunQueryResponse;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 6817
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->clearMatchingDocuments()V

    return-void
.end method

.method private clearListenResponse()V
    .locals 1

    .line 6886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    .line 6888
    return-void
.end method

.method private clearMatchingDocuments()V
    .locals 1

    .line 6957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    .line 6959
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1

    .line 7269
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method private mergeListenResponse(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/ListenResponse;

    .line 6869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6870
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    if-eqz v0, :cond_0

    .line 6871
    invoke-static {}, Lcom/google/firestore/v1/ListenResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6872
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    .line 6873
    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->newBuilder(Lcom/google/firestore/v1/ListenResponse;)Lcom/google/firestore/v1/ListenResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/ListenResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    goto :goto_0

    .line 6875
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    .line 6878
    :goto_0
    return-void
.end method

.method private mergeMatchingDocuments(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 6939
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6940
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    if-eqz v0, :cond_0

    .line 6941
    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6942
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    .line 6943
    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->newBuilder(Lcom/google/firestore/v1/RunQueryResponse;)Lcom/google/firestore/v1/RunQueryResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    goto :goto_0

    .line 6945
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    .line 6948
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;
    .locals 1

    .line 7036
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    .line 7039
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7013
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7019
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6977
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6984
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7024
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7031
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7001
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7008
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6964
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6971
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6989
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6996
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;",
            ">;"
        }
    .end annotation

    .line 7275
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setListenResponse(Lcom/google/firestore/v1/ListenResponse;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/ListenResponse;

    .line 6856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6857
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    .line 6859
    return-void
.end method

.method private setMatchingDocuments(Lcom/google/firestore/v1/RunQueryResponse;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/RunQueryResponse;

    .line 6925
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6926
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    .line 6928
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 7211
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7250
    :pswitch_0
    return-object v1

    .line 7247
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 7232
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->PARSER:Lcom/google/protobuf/Parser;

    .line 7233
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;>;"
    if-nez v0, :cond_1

    .line 7234
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    monitor-enter v1

    .line 7235
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 7236
    if-nez v0, :cond_0

    .line 7237
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 7240
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->PARSER:Lcom/google/protobuf/Parser;

    .line 7242
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7244
    :cond_1
    :goto_0
    return-object v0

    .line 7229
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    return-object v0

    .line 7219
    :pswitch_4
    const-string v0, "listenResponse_"

    const-string v1, "matchingDocuments_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 7223
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 7225
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 7216
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 7213
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;-><init>()V

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

.method public getListenResponse()Lcom/google/firestore/v1/ListenResponse;
    .locals 1

    .line 6846
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/ListenResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMatchingDocuments()Lcom/google/firestore/v1/RunQueryResponse;
    .locals 1

    .line 6914
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasListenResponse()Z
    .locals 1

    .line 6835
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->listenResponse_:Lcom/google/firestore/v1/ListenResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatchingDocuments()Z
    .locals 1

    .line 6902
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$MatchingDocuments;->matchingDocuments_:Lcom/google/firestore/v1/RunQueryResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
