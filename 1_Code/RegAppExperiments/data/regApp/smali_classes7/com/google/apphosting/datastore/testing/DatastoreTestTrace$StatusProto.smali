.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final CANONICAL_CODE_FIELD_NUMBER:I = 0x6

.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

.field public static final MESSAGE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPACE_FIELD_NUMBER:I = 0x2


# instance fields
.field private canonicalCode_:I

.field private code_:I

.field private message_:Ljava/lang/String;

.field private space_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 691
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;-><init>()V

    .line 694
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 695
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 697
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->space_:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->message_:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic access$000()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1

    .line 84
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->setCode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 84
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->clearCanonicalCode()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 84
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->clearCode()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->setSpace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 84
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->clearSpace()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->setSpaceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 84
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->clearMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 84
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->setCanonicalCode(I)V

    return-void
.end method

.method private clearCanonicalCode()V
    .locals 1

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->canonicalCode_:I

    .line 307
    return-void
.end method

.method private clearCode()V
    .locals 1

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->code_:I

    .line 132
    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 251
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->message_:Ljava/lang/String;

    .line 252
    return-void
.end method

.method private clearSpace()V
    .locals 1

    .line 184
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getSpace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->space_:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1

    .line 700
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1

    .line 384
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    .line 387
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;",
            ">;"
        }
    .end annotation

    .line 706
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCanonicalCode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 294
    iput p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->canonicalCode_:I

    .line 295
    return-void
.end method

.method private setCode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 119
    iput p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->code_:I

    .line 120
    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->message_:Ljava/lang/String;

    .line 241
    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 263
    invoke-static {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 264
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->message_:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private setSpace(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 173
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->space_:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private setSpaceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 196
    invoke-static {p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 197
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->space_:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 639
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 681
    :pswitch_0
    return-object v1

    .line 678
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 663
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 664
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;>;"
    if-nez v0, :cond_1

    .line 665
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    monitor-enter v1

    .line 666
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 667
    if-nez v0, :cond_0

    .line 668
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 671
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 673
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 675
    :cond_1
    :goto_0
    return-object v0

    .line 660
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    return-object v0

    .line 647
    :pswitch_4
    const-string v0, "code_"

    const-string v1, "space_"

    const-string v2, "message_"

    const-string v3, "canonicalCode_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0006\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0208\u0003\u0208\u0006\u0004"

    .line 656
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 644
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 641
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;-><init>()V

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

.method public getCanonicalCode()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->canonicalCode_:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->code_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->space_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$StatusProto;->space_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
