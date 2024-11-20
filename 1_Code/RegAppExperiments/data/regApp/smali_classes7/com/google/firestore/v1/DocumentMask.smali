.class public final Lcom/google/firestore/v1/DocumentMask;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentMask.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentMask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentMask;",
        "Lcom/google/firestore/v1/DocumentMask$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentMaskOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

.field public static final FIELD_PATHS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentMask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 458
    new-instance v0, Lcom/google/firestore/v1/DocumentMask;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentMask;-><init>()V

    .line 461
    .local v0, "defaultInstance":Lcom/google/firestore/v1/DocumentMask;
    sput-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    .line 462
    const-class v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 464
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/DocumentMask;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 24
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/DocumentMask;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentMask;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/DocumentMask;->setFieldPaths(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/DocumentMask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentMask;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentMask;->addFieldPaths(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/DocumentMask;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentMask;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentMask;->addAllFieldPaths(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentMask;

    .line 17
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask;->clearFieldPaths()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/DocumentMask;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentMask;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentMask;->addFieldPathsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllFieldPaths(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask;->ensureFieldPathsIsMutable()V

    .line 133
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method private addFieldPaths(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask;->ensureFieldPathsIsMutable()V

    .line 119
    iget-object v1, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method private addFieldPathsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 158
    invoke-static {p1}, Lcom/google/firestore/v1/DocumentMask;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 159
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask;->ensureFieldPathsIsMutable()V

    .line 160
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method private clearFieldPaths()V
    .locals 1

    .line 145
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 146
    return-void
.end method

.method private ensureFieldPathsIsMutable()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 85
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    nop

    .line 87
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 89
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 467
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentMask$Builder;
    .locals 1

    .line 238
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/DocumentMask;

    .line 241
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/DocumentMask;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/DocumentMask;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/DocumentMask;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentMask;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentMask;",
            ">;"
        }
    .end annotation

    .line 473
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFieldPaths(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask;->ensureFieldPathsIsMutable()V

    .line 104
    iget-object v1, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/google/firestore/v1/DocumentMask$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 451
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 448
    :pswitch_0
    return-object v1

    .line 445
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 430
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 431
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/DocumentMask;>;"
    if-nez v0, :cond_1

    .line 432
    const-class v1, Lcom/google/firestore/v1/DocumentMask;

    monitor-enter v1

    .line 433
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/DocumentMask;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 434
    if-nez v0, :cond_0

    .line 435
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 438
    sput-object v0, Lcom/google/firestore/v1/DocumentMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 440
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 442
    :cond_1
    :goto_0
    return-object v0

    .line 427
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/DocumentMask;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    return-object v0

    .line 418
    :pswitch_4
    const-string v0, "fieldPaths_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 421
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    .line 423
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/DocumentMask;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 415
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/DocumentMask$Builder;-><init>(Lcom/google/firestore/v1/DocumentMask$1;)V

    return-object v0

    .line 412
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/DocumentMask;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentMask;-><init>()V

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

.method public getFieldPaths(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPathsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 80
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 81
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPathsCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFieldPathsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
