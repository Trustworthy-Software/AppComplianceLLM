.class public final Lcom/google/firebase/firestore/proto/UnknownDocument;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UnknownDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/UnknownDocument;",
        "Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/UnknownDocument;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private name_:Ljava/lang/String;

.field private version_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 462
    new-instance v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;-><init>()V

    .line 465
    .local v0, "defaultInstance":Lcom/google/firebase/firestore/proto/UnknownDocument;
    sput-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 466
    const-class v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 468
    .end local v0    # "defaultInstance":Lcom/google/firebase/firestore/proto/UnknownDocument;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/UnknownDocument;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->setVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->mergeVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/proto/UnknownDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->clearVersion()V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    .line 158
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 471
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method private mergeVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    .line 143
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    .line 148
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 235
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 238
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/UnknownDocument;",
            ">;"
        }
    .end annotation

    .line 477
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 89
    invoke-static {p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private setVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    .line 129
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 452
    :pswitch_0
    return-object v1

    .line 449
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 434
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->PARSER:Lcom/google/protobuf/Parser;

    .line 435
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/UnknownDocument;>;"
    if-nez v0, :cond_1

    .line 436
    const-class v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    monitor-enter v1

    .line 437
    :try_start_0
    sget-object v2, Lcom/google/firebase/firestore/proto/UnknownDocument;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 438
    if-nez v0, :cond_0

    .line 439
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 442
    sput-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->PARSER:Lcom/google/protobuf/Parser;

    .line 444
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 446
    :cond_1
    :goto_0
    return-object v0

    .line 431
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/UnknownDocument;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    return-object v0

    .line 420
    :pswitch_4
    const-string v0, "name_"

    const-string v1, "version_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 424
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\t"

    .line 427
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/firestore/proto/UnknownDocument;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 417
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;-><init>(Lcom/google/firebase/firestore/proto/UnknownDocument$1;)V

    return-object v0

    .line 414
    :pswitch_6
    new-instance v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument;->version_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
