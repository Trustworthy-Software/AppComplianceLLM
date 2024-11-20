.class public final Lcom/google/firestore/admin/v1/Index$IndexField;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Index.java"

# interfaces
.implements Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/admin/v1/Index$IndexField$Builder;,
        Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;,
        Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;,
        Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/admin/v1/Index$IndexField;",
        "Lcom/google/firestore/admin/v1/Index$IndexField$Builder;",
        ">;",
        "Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARRAY_CONFIG_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x1

.field public static final ORDER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldPath_:Ljava/lang/String;

.field private valueModeCase_:I

.field private valueMode_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1371
    new-instance v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;-><init>()V

    .line 1374
    .local v0, "defaultInstance":Lcom/google/firestore/admin/v1/Index$IndexField;
    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 1375
    const-class v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1377
    .end local v0    # "defaultInstance":Lcom/google/firestore/admin/v1/Index$IndexField;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 431
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 669
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->fieldPath_:Ljava/lang/String;

    .line 433
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1

    .line 426
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 426
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$IndexField;->clearValueMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 426
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$IndexField;->clearArrayConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/admin/v1/Index$IndexField;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;
    .param p1, "x1"    # Ljava/lang/String;

    .line 426
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->setFieldPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 426
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$IndexField;->clearFieldPath()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/admin/v1/Index$IndexField;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 426
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->setFieldPathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/admin/v1/Index$IndexField;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;
    .param p1, "x1"    # I

    .line 426
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->setOrderValue(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/admin/v1/Index$IndexField;Lcom/google/firestore/admin/v1/Index$IndexField$Order;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;
    .param p1, "x1"    # Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 426
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->setOrder(Lcom/google/firestore/admin/v1/Index$IndexField$Order;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 426
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index$IndexField;->clearOrder()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/admin/v1/Index$IndexField;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;
    .param p1, "x1"    # I

    .line 426
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->setArrayConfigValue(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/admin/v1/Index$IndexField;Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index$IndexField;
    .param p1, "x1"    # Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    .line 426
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->setArrayConfig(Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;)V

    return-void
.end method

.method private clearArrayConfig()V
    .locals 2

    .line 953
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 957
    :cond_0
    return-void
.end method

.method private clearFieldPath()V
    .locals 1

    .line 770
    invoke-static {}, Lcom/google/firestore/admin/v1/Index$IndexField;->getDefaultInstance()Lcom/google/firestore/admin/v1/Index$IndexField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->fieldPath_:Ljava/lang/String;

    .line 771
    return-void
.end method

.method private clearOrder()V
    .locals 2

    .line 871
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 872
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 875
    :cond_0
    return-void
.end method

.method private clearValueMode()V
    .locals 1

    .line 708
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 710
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1

    .line 1380
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1

    .line 1034
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/admin/v1/Index$IndexField;)Lcom/google/firestore/admin/v1/Index$IndexField$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 1037
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0, p0}, Lcom/google/firestore/admin/v1/Index$IndexField;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0}, Lcom/google/firestore/admin/v1/Index$IndexField;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 975
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 982
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1022
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 999
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 962
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 969
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 987
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 994
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;"
        }
    .end annotation

    .line 1386
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArrayConfig(Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    .line 942
    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 943
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 944
    return-void
.end method

.method private setArrayConfigValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 930
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 931
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 932
    return-void
.end method

.method private setFieldPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 757
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->fieldPath_:Ljava/lang/String;

    .line 758
    return-void
.end method

.method private setFieldPathBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 784
    invoke-static {p1}, Lcom/google/firestore/admin/v1/Index$IndexField;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 785
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->fieldPath_:Ljava/lang/String;

    .line 787
    return-void
.end method

.method private setOrder(Lcom/google/firestore/admin/v1/Index$IndexField$Order;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    .line 859
    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 860
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 861
    return-void
.end method

.method private setOrderValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 846
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    .line 847
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    .line 848
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1320
    sget-object v0, Lcom/google/firestore/admin/v1/Index$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1361
    :pswitch_0
    return-object v1

    .line 1358
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1343
    :pswitch_2
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->PARSER:Lcom/google/protobuf/Parser;

    .line 1344
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/admin/v1/Index$IndexField;>;"
    if-nez v0, :cond_1

    .line 1345
    const-class v1, Lcom/google/firestore/admin/v1/Index$IndexField;

    monitor-enter v1

    .line 1346
    :try_start_0
    sget-object v2, Lcom/google/firestore/admin/v1/Index$IndexField;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1347
    if-nez v0, :cond_0

    .line 1348
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1351
    sput-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->PARSER:Lcom/google/protobuf/Parser;

    .line 1353
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1355
    :cond_1
    :goto_0
    return-object v0

    .line 1340
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/admin/v1/Index$IndexField;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0

    .line 1328
    :pswitch_4
    const-string v0, "valueMode_"

    const-string v1, "valueModeCase_"

    const-string v2, "fieldPath_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1333
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002?\u0000\u0003?\u0000"

    .line 1336
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/admin/v1/Index$IndexField;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/admin/v1/Index$IndexField;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1325
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/admin/v1/Index$IndexField$Builder;-><init>(Lcom/google/firestore/admin/v1/Index$1;)V

    return-object v0

    .line 1322
    :pswitch_6
    new-instance v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index$IndexField;-><init>()V

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

.method public getArrayConfig()Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;
    .locals 2

    .line 915
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 916
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;->forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    move-result-object v0

    .line 917
    .local v0, "result":Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 919
    .end local v0    # "result":Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;
    :cond_1
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;->ARRAY_CONFIG_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$IndexField$ArrayConfig;

    return-object v0
.end method

.method public getArrayConfigValue()I
    .locals 2

    .line 900
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 903
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->fieldPath_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->fieldPath_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOrder()Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    .locals 2

    .line 830
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 831
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    move-result-object v0

    .line 832
    .local v0, "result":Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 834
    .end local v0    # "result":Lcom/google/firestore/admin/v1/Index$IndexField$Order;
    :cond_1
    sget-object v0, Lcom/google/firestore/admin/v1/Index$IndexField$Order;->ORDER_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$IndexField$Order;

    return-object v0
.end method

.method public getOrderValue()I
    .locals 2

    .line 814
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueMode_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 817
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getValueModeCase()Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;
    .locals 1

    .line 703
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;->forNumber(I)Lcom/google/firestore/admin/v1/Index$IndexField$ValueModeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasArrayConfig()Z
    .locals 2

    .line 888
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOrder()Z
    .locals 2

    .line 801
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$IndexField;->valueModeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
