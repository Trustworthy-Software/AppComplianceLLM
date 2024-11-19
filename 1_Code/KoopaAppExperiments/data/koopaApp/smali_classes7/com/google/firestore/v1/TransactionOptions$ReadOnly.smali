.class public final Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TransactionOptions.java"

# interfaces
.implements Lcom/google/firestore/v1/TransactionOptions$ReadOnlyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TransactionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReadOnly"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;,
        Lcom/google/firestore/v1/TransactionOptions$ReadOnly$ConsistencySelectorCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/TransactionOptions$ReadOnly;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadOnlyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TransactionOptions$ReadOnly;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 704
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-direct {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;-><init>()V

    .line 707
    .local v0, "defaultInstance":Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 708
    const-class v1, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 710
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    .line 341
    return-void
.end method

.method static synthetic access$400()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1

    .line 335
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 335
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 335
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 335
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 335
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->clearReadTime()V

    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    .line 381
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 452
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    .line 456
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1

    .line 713
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    .line 435
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 439
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    .line 441
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    .line 442
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 1

    .line 533
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 536
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 493
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/TransactionOptions$ReadOnly;",
            ">;"
        }
    .end annotation

    .line 719
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    iput-object p1, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    .line 422
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    .line 423
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 697
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 694
    :pswitch_0
    return-object v1

    .line 691
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 676
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->PARSER:Lcom/google/protobuf/Parser;

    .line 677
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/TransactionOptions$ReadOnly;>;"
    if-nez v0, :cond_1

    .line 678
    const-class v1, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    monitor-enter v1

    .line 679
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 680
    if-nez v0, :cond_0

    .line 681
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 684
    sput-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->PARSER:Lcom/google/protobuf/Parser;

    .line 686
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 688
    :cond_1
    :goto_0
    return-object v0

    .line 673
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/TransactionOptions$ReadOnly;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    return-object v0

    .line 662
    :pswitch_4
    const-string v0, "consistencySelector_"

    const-string v1, "consistencySelectorCase_"

    const-class v2, Lcom/google/protobuf/Timestamp;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 667
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0001\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002<\u0000"

    .line 669
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 659
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;-><init>(Lcom/google/firestore/v1/TransactionOptions$1;)V

    return-object v0

    .line 656
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-direct {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;-><init>()V

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

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/TransactionOptions$ReadOnly$ConsistencySelectorCase;
    .locals 1

    .line 374
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/TransactionOptions$ReadOnly$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 406
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 409
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 394
    iget v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->consistencySelectorCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
