.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTraceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParallelTestTrace"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTraceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEST_TRACE_FIELD_NUMBER:I = 0x1


# instance fields
.field private testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10957
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;-><init>()V

    .line 10960
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    .line 10961
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10963
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10707
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10708
    return-void
.end method

.method static synthetic access$21100()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1

    .line 10702
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method static synthetic access$21200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10702
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    return-void
.end method

.method static synthetic access$21300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10702
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    return-void
.end method

.method static synthetic access$21400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    .line 10702
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->clearTestTrace()V

    return-void
.end method

.method private clearTestTrace()V
    .locals 1

    .line 10751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10753
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1

    .line 10966
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method private mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 2
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10738
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10739
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-eqz v0, :cond_0

    .line 10740
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10741
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10742
    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    goto :goto_0

    .line 10744
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10747
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1

    .line 10830
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    .line 10833
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10807
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10813
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10771
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10778
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10818
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10825
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10795
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10802
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10758
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10765
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10783
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10790
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;",
            ">;"
        }
    .end annotation

    .line 10972
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10729
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10730
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10732
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 10909
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10950
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 10947
    :pswitch_0
    return-object v1

    .line 10944
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 10929
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    .line 10930
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;>;"
    if-nez v0, :cond_1

    .line 10931
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    monitor-enter v1

    .line 10932
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 10933
    if-nez v0, :cond_0

    .line 10934
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 10937
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    .line 10939
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 10941
    :cond_1
    :goto_0
    return-object v0

    .line 10926
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    return-object v0

    .line 10917
    :pswitch_4
    const-string v0, "testTrace_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 10920
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 10922
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 10914
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 10911
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;-><init>()V

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

.method public getTestTrace()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;
    .locals 1

    .line 10723
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTestTrace()Z
    .locals 1

    .line 10716
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ParallelTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
