.class public final Lcom/google/firestore/v1/RollbackRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RollbackRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RollbackRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/RollbackRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/RollbackRequest;",
        "Lcom/google/firestore/v1/RollbackRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RollbackRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RollbackRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x2


# instance fields
.field private database_:Ljava/lang/String;

.field private transaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 403
    new-instance v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/RollbackRequest;-><init>()V

    .line 406
    .local v0, "defaultInstance":Lcom/google/firestore/v1/RollbackRequest;
    sput-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    .line 407
    const-class v1, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 409
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/RollbackRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->database_:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->transaction_:Lcom/google/protobuf/ByteString;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/RollbackRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/RollbackRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RollbackRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RollbackRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/RollbackRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RollbackRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RollbackRequest;->clearDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RollbackRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RollbackRequest;->setDatabaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RollbackRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/RollbackRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/RollbackRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/RollbackRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/RollbackRequest;->clearTransaction()V

    return-void
.end method

.method private clearDatabase()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/google/firestore/v1/RollbackRequest;->getDefaultInstance()Lcom/google/firestore/v1/RollbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->database_:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 130
    invoke-static {}, Lcom/google/firestore/v1/RollbackRequest;->getDefaultInstance()Lcom/google/firestore/v1/RollbackRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->transaction_:Lcom/google/protobuf/ByteString;

    .line 131
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/RollbackRequest;
    .locals 1

    .line 412
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1

    .line 208
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/RollbackRequest;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/RollbackRequest;

    .line 211
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/RollbackRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/RollbackRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/RollbackRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/RollbackRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/RollbackRequest;",
            ">;"
        }
    .end annotation

    .line 418
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/RollbackRequest;->database_:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private setDatabaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 89
    invoke-static {p1}, Lcom/google/firestore/v1/RollbackRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->database_:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 119
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/RollbackRequest;->transaction_:Lcom/google/protobuf/ByteString;

    .line 120
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 393
    :pswitch_0
    return-object v1

    .line 390
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 375
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 376
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/RollbackRequest;>;"
    if-nez v0, :cond_1

    .line 377
    const-class v1, Lcom/google/firestore/v1/RollbackRequest;

    monitor-enter v1

    .line 378
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/RollbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 379
    if-nez v0, :cond_0

    .line 380
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 383
    sput-object v0, Lcom/google/firestore/v1/RollbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 385
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 387
    :cond_1
    :goto_0
    return-object v0

    .line 372
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/RollbackRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    return-object v0

    .line 361
    :pswitch_4
    const-string v0, "database_"

    const-string v1, "transaction_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 365
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    .line 368
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/RollbackRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/RollbackRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 358
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/RollbackRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/RollbackRequest$Builder;-><init>(Lcom/google/firestore/v1/RollbackRequest$1;)V

    return-object v0

    .line 355
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/RollbackRequest;-><init>()V

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

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->database_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest;->transaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
