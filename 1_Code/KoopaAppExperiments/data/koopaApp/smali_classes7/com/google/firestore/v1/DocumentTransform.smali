.class public final Lcom/google/firestore/v1/DocumentTransform;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentTransform.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentTransformOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentTransform$Builder;,
        Lcom/google/firestore/v1/DocumentTransform$FieldTransform;,
        Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentTransform;",
        "Lcom/google/firestore/v1/DocumentTransform$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentTransformOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field public static final FIELD_TRANSFORMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentTransform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private document_:Ljava/lang/String;

.field private fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2758
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentTransform;-><init>()V

    .line 2761
    .local v0, "defaultInstance":Lcom/google/firestore/v1/DocumentTransform;
    sput-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    .line 2762
    const-class v1, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2764
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/DocumentTransform;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method static synthetic access$2400()Lcom/google/firestore/v1/DocumentTransform;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/DocumentTransform;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->setDocument(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/DocumentTransform;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->clearDocument()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/DocumentTransform;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->setDocumentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/DocumentTransform;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/DocumentTransform;->setFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firestore/v1/DocumentTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->addFieldTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firestore/v1/DocumentTransform;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/DocumentTransform;->addFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firestore/v1/DocumentTransform;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->addAllFieldTransforms(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firestore/v1/DocumentTransform;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->clearFieldTransforms()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firestore/v1/DocumentTransform;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/DocumentTransform;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->removeFieldTransforms(I)V

    return-void
.end method

.method private addAllFieldTransforms(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;)V"
        }
    .end annotation

    .line 2328
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/DocumentTransform$FieldTransform;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->ensureFieldTransformsIsMutable()V

    .line 2329
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2331
    return-void
.end method

.method private addFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2313
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2314
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->ensureFieldTransformsIsMutable()V

    .line 2315
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 2316
    return-void
.end method

.method private addFieldTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2299
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->ensureFieldTransformsIsMutable()V

    .line 2300
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 2301
    return-void
.end method

.method private clearDocument()V
    .locals 1

    .line 2181
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->getDefaultInstance()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->getDocument()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 2182
    return-void
.end method

.method private clearFieldTransforms()V
    .locals 1

    .line 2342
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2343
    return-void
.end method

.method private ensureFieldTransformsIsMutable()V
    .locals 2

    .line 2266
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2267
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/DocumentTransform$FieldTransform;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2268
    nop

    .line 2269
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2271
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentTransform;
    .locals 1

    .line 2767
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1

    .line 2433
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/DocumentTransform;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 2436
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/DocumentTransform;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2410
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/DocumentTransform;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2416
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/DocumentTransform;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2374
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2381
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2421
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2428
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2398
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2405
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2361
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2368
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2386
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/DocumentTransform;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2393
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentTransform;",
            ">;"
        }
    .end annotation

    .line 2773
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFieldTransforms(I)V
    .locals 1
    .param p1, "index"    # I

    .line 2354
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->ensureFieldTransformsIsMutable()V

    .line 2355
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 2356
    return-void
.end method

.method private setDocument(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2170
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 2171
    return-void
.end method

.method private setDocumentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2193
    invoke-static {p1}, Lcom/google/firestore/v1/DocumentTransform;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2194
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    .line 2196
    return-void
.end method

.method private setFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2284
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2285
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform;->ensureFieldTransformsIsMutable()V

    .line 2286
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2287
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2707
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2751
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2748
    :pswitch_0
    return-object v1

    .line 2745
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2730
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    .line 2731
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/DocumentTransform;>;"
    if-nez v0, :cond_1

    .line 2732
    const-class v1, Lcom/google/firestore/v1/DocumentTransform;

    monitor-enter v1

    .line 2733
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2734
    if-nez v0, :cond_0

    .line 2735
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2738
    sput-object v0, Lcom/google/firestore/v1/DocumentTransform;->PARSER:Lcom/google/protobuf/Parser;

    .line 2740
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2742
    :cond_1
    :goto_0
    return-object v0

    .line 2727
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/DocumentTransform;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    return-object v0

    .line 2715
    :pswitch_4
    const-string v0, "document_"

    const-string v1, "fieldTransforms_"

    const-class v2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 2720
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 2723
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/DocumentTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/DocumentTransform;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2712
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/DocumentTransform$Builder;-><init>(Lcom/google/firestore/v1/DocumentTransform$1;)V

    return-object v0

    .line 2709
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentTransform;-><init>()V

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

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->document_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 1
    .param p1, "index"    # I

    .line 2250
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    return-object v0
.end method

.method public getFieldTransformsCount()I
    .locals 1

    .line 2237
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFieldTransformsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation

    .line 2211
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFieldTransformsOrBuilder(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 2263
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;

    return-object v0
.end method

.method public getFieldTransformsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2224
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform;->fieldTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
