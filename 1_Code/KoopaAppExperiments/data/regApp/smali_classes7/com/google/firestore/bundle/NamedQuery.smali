.class public final Lcom/google/firestore/bundle/NamedQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NamedQuery.java"

# interfaces
.implements Lcom/google/firestore/bundle/NamedQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/NamedQuery$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/NamedQuery;",
        "Lcom/google/firestore/bundle/NamedQuery$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/NamedQueryOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUNDLED_QUERY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x3


# instance fields
.field private bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

.field private name_:Ljava/lang/String;

.field private readTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 621
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/NamedQuery;-><init>()V

    .line 624
    .local v0, "defaultInstance":Lcom/google/firestore/bundle/NamedQuery;
    sput-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    .line 625
    const-class v1, Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 627
    .end local v0    # "defaultInstance":Lcom/google/firestore/bundle/NamedQuery;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/NamedQuery;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearBundledQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/NamedQuery;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/NamedQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/bundle/NamedQuery;->clearReadTime()V

    return-void
.end method

.method private clearBundledQuery()V
    .locals 1

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 163
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 80
    invoke-static {}, Lcom/google/firestore/bundle/NamedQuery;->getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 234
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/NamedQuery;
    .locals 1

    .line 630
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method private mergeBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 148
    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->newBuilder(Lcom/google/firestore/bundle/BundledQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/bundle/BundledQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    goto :goto_0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 153
    :goto_0
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 218
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 223
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1

    .line 311
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/NamedQuery;)Lcom/google/firestore/bundle/NamedQuery$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/bundle/NamedQuery;

    .line 314
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/NamedQuery;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/NamedQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/NamedQuery;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/NamedQuery;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation

    .line 636
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/NamedQuery;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBundledQuery(Lcom/google/firestore/bundle/BundledQuery;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    .line 134
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 94
    invoke-static {p1}, Lcom/google/firestore/bundle/NamedQuery;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    iput-object p1, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 203
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 611
    :pswitch_0
    return-object v1

    .line 608
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 593
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 594
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/NamedQuery;>;"
    if-nez v0, :cond_1

    .line 595
    const-class v1, Lcom/google/firestore/bundle/NamedQuery;

    monitor-enter v1

    .line 596
    :try_start_0
    sget-object v2, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 597
    if-nez v0, :cond_0

    .line 598
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 601
    sput-object v0, Lcom/google/firestore/bundle/NamedQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 603
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 605
    :cond_1
    :goto_0
    return-object v0

    .line 590
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/NamedQuery;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    return-object v0

    .line 578
    :pswitch_4
    const-string v0, "name_"

    const-string v1, "bundledQuery_"

    const-string v2, "readTime_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 583
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\t"

    .line 586
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/bundle/NamedQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/NamedQuery;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/bundle/NamedQuery;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 575
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/bundle/NamedQuery$Builder;-><init>(Lcom/google/firestore/bundle/NamedQuery$1;)V

    return-object v0

    .line 572
    :pswitch_6
    new-instance v0, Lcom/google/firestore/bundle/NamedQuery;

    invoke-direct {v0}, Lcom/google/firestore/bundle/NamedQuery;-><init>()V

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

.method public getBundledQuery()Lcom/google/firestore/bundle/BundledQuery;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->getDefaultInstance()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBundledQuery()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->bundledQuery_:Lcom/google/firestore/bundle/BundledQuery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firestore/bundle/NamedQuery;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
