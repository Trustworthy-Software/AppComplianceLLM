.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTraceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimelineTestTrace"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTraceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;",
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

    .line 11254
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;-><init>()V

    .line 11257
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    .line 11258
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11260
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11004
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11005
    return-void
.end method

.method static synthetic access$21600()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1

    .line 10999
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method static synthetic access$21700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10999
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    return-void
.end method

.method static synthetic access$21800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .param p1, "x1"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 10999
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V

    return-void
.end method

.method static synthetic access$21900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    .line 10999
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->clearTestTrace()V

    return-void
.end method

.method private clearTestTrace()V
    .locals 1

    .line 11048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11050
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1

    .line 11263
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method private mergeTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 2
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11035
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11036
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-eqz v0, :cond_0

    .line 11037
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11038
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11039
    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    goto :goto_0

    .line 11041
    :cond_0
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11044
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    .locals 1

    .line 11127
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    .line 11130
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11104
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11110
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11068
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11075
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11115
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11122
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11092
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11099
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11055
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11062
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11080
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11087
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;",
            ">;"
        }
    .end annotation

    .line 11269
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTestTrace(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;)V
    .locals 0
    .param p1, "value"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11026
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11027
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    .line 11029
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 11206
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11244
    :pswitch_0
    return-object v1

    .line 11241
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 11226
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    .line 11227
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;>;"
    if-nez v0, :cond_1

    .line 11228
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    monitor-enter v1

    .line 11229
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 11230
    if-nez v0, :cond_0

    .line 11231
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 11234
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->PARSER:Lcom/google/protobuf/Parser;

    .line 11236
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 11238
    :cond_1
    :goto_0
    return-object v0

    .line 11223
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    return-object v0

    .line 11214
    :pswitch_4
    const-string v0, "testTrace_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 11217
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 11219
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 11211
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 11208
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;-><init>()V

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

    .line 11020
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTestTrace()Z
    .locals 1

    .line 11013
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TimelineTestTrace;->testTrace_:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$TestTrace;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
