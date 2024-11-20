.class public final Lcom/google/firestore/v1/Target$DocumentsTarget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentsTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target$DocumentsTarget;",
        "Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$DocumentsTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private documents_:Lcom/google/protobuf/Internal$ProtobufList;
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

    .line 557
    new-instance v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;-><init>()V

    .line 560
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Target$DocumentsTarget;
    sput-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 561
    const-class v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 563
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Target$DocumentsTarget;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 90
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 91
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 84
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Target$DocumentsTarget;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$DocumentsTarget;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Target$DocumentsTarget;->setDocuments(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Target$DocumentsTarget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$DocumentsTarget;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->addDocuments(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Target$DocumentsTarget;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$DocumentsTarget;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->addAllDocuments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 84
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->clearDocuments()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Target$DocumentsTarget;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$DocumentsTarget;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->addDocumentsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllDocuments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->ensureDocumentsIsMutable()V

    .line 214
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 216
    return-void
.end method

.method private addDocuments(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 197
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->ensureDocumentsIsMutable()V

    .line 198
    iget-object v1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method private addDocumentsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 243
    invoke-static {p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 244
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->ensureDocumentsIsMutable()V

    .line 245
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method private clearDocuments()V
    .locals 1

    .line 228
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 229
    return-void
.end method

.method private ensureDocumentsIsMutable()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 160
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    nop

    .line 162
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 164
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 566
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1

    .line 323
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 326
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$DocumentsTarget;",
            ">;"
        }
    .end annotation

    .line 572
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->ensureDocumentsIsMutable()V

    .line 181
    iget-object v1, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 550
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 547
    :pswitch_0
    return-object v1

    .line 544
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 529
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 530
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target$DocumentsTarget;>;"
    if-nez v0, :cond_1

    .line 531
    const-class v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    monitor-enter v1

    .line 532
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 533
    if-nez v0, :cond_0

    .line 534
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 537
    sput-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 539
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 541
    :cond_1
    :goto_0
    return-object v0

    .line 526
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target$DocumentsTarget;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0

    .line 517
    :pswitch_4
    const-string v0, "documents_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u021a"

    .line 522
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Target$DocumentsTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 514
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object v0

    .line 511
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;-><init>()V

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

.method public getDocuments(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 138
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 155
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 156
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsCount()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
