.class public final Lcom/google/firestore/admin/v1/Index;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Index.java"

# interfaces
.implements Lcom/google/firestore/admin/v1/IndexOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/admin/v1/Index$Builder;,
        Lcom/google/firestore/admin/v1/Index$IndexField;,
        Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;,
        Lcom/google/firestore/admin/v1/Index$State;,
        Lcom/google/firestore/admin/v1/Index$QueryScope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/admin/v1/Index;",
        "Lcom/google/firestore/admin/v1/Index$Builder;",
        ">;",
        "Lcom/google/firestore/admin/v1/IndexOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

.field public static final FIELDS_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/admin/v1/Index;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_SCOPE_FIELD_NUMBER:I = 0x2

.field public static final STATE_FIELD_NUMBER:I = 0x4


# instance fields
.field private fields_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private queryScope_:I

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2494
    new-instance v0, Lcom/google/firestore/admin/v1/Index;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index;-><init>()V

    .line 2497
    .local v0, "defaultInstance":Lcom/google/firestore/admin/v1/Index;
    sput-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    .line 2498
    const-class v1, Lcom/google/firestore/admin/v1/Index;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2500
    .end local v0    # "defaultInstance":Lcom/google/firestore/admin/v1/Index;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index;->name_:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/google/firestore/admin/v1/Index;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    return-void
.end method

.method static synthetic access$1200()Lcom/google/firestore/admin/v1/Index;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/firestore/admin/v1/Index;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/admin/v1/Index;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->clearName()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/admin/v1/Index;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/admin/v1/Index;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->setQueryScopeValue(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$QueryScope;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # Lcom/google/firestore/admin/v1/Index$QueryScope;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->setQueryScope(Lcom/google/firestore/admin/v1/Index$QueryScope;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/admin/v1/Index;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->clearQueryScope()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/admin/v1/Index;->setFields(ILcom/google/firestore/admin/v1/Index$IndexField;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->addFields(Lcom/google/firestore/admin/v1/Index$IndexField;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/admin/v1/Index;ILcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/admin/v1/Index;->addFields(ILcom/google/firestore/admin/v1/Index$IndexField;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/admin/v1/Index;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->addAllFields(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/admin/v1/Index;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->clearFields()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/admin/v1/Index;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->removeFields(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/admin/v1/Index;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # I

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->setStateValue(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/admin/v1/Index;Lcom/google/firestore/admin/v1/Index$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;
    .param p1, "x1"    # Lcom/google/firestore/admin/v1/Index$State;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/admin/v1/Index;->setState(Lcom/google/firestore/admin/v1/Index$State;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/admin/v1/Index;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/admin/v1/Index;

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->clearState()V

    return-void
.end method

.method private addAllFields(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;)V"
        }
    .end annotation

    .line 1743
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/admin/v1/Index$IndexField;>;"
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->ensureFieldsIsMutable()V

    .line 1744
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1746
    return-void
.end method

.method private addFields(ILcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 1722
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1723
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->ensureFieldsIsMutable()V

    .line 1724
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 1725
    return-void
.end method

.method private addFields(Lcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 1701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1702
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->ensureFieldsIsMutable()V

    .line 1703
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 1704
    return-void
.end method

.method private clearFields()V
    .locals 1

    .line 1763
    invoke-static {}, Lcom/google/firestore/admin/v1/Index;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1764
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1452
    invoke-static {}, Lcom/google/firestore/admin/v1/Index;->getDefaultInstance()Lcom/google/firestore/admin/v1/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index;->name_:Ljava/lang/String;

    .line 1453
    return-void
.end method

.method private clearQueryScope()V
    .locals 1

    .line 1556
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index;->queryScope_:I

    .line 1557
    return-void
.end method

.method private clearState()V
    .locals 1

    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index;->state_:I

    .line 1845
    return-void
.end method

.method private ensureFieldsIsMutable()V
    .locals 2

    .line 1657
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1658
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/admin/v1/Index$IndexField;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1659
    nop

    .line 1660
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1662
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/admin/v1/Index;
    .locals 1

    .line 2503
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1

    .line 1922
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/admin/v1/Index;)Lcom/google/firestore/admin/v1/Index$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/admin/v1/Index;

    .line 1925
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0, p0}, Lcom/google/firestore/admin/v1/Index;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1899
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0}, Lcom/google/firestore/admin/v1/Index;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/admin/v1/Index;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1863
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1870
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1910
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1917
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1887
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1894
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1850
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1857
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1875
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/admin/v1/Index;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1882
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/admin/v1/Index;",
            ">;"
        }
    .end annotation

    .line 2509
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-virtual {v0}, Lcom/google/firestore/admin/v1/Index;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFields(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1781
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->ensureFieldsIsMutable()V

    .line 1782
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 1783
    return-void
.end method

.method private setFields(ILcom/google/firestore/admin/v1/Index$IndexField;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/admin/v1/Index$IndexField;

    .line 1681
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1682
    invoke-direct {p0}, Lcom/google/firestore/admin/v1/Index;->ensureFieldsIsMutable()V

    .line 1683
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1684
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1438
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/admin/v1/Index;->name_:Ljava/lang/String;

    .line 1439
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1467
    invoke-static {p1}, Lcom/google/firestore/admin/v1/Index;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1468
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/admin/v1/Index;->name_:Ljava/lang/String;

    .line 1470
    return-void
.end method

.method private setQueryScope(Lcom/google/firestore/admin/v1/Index$QueryScope;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$QueryScope;

    .line 1539
    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index$QueryScope;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index;->queryScope_:I

    .line 1541
    return-void
.end method

.method private setQueryScopeValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1523
    iput p1, p0, Lcom/google/firestore/admin/v1/Index;->queryScope_:I

    .line 1524
    return-void
.end method

.method private setState(Lcom/google/firestore/admin/v1/Index$State;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/admin/v1/Index$State;

    .line 1832
    invoke-virtual {p1}, Lcom/google/firestore/admin/v1/Index$State;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/google/firestore/admin/v1/Index;->state_:I

    .line 1834
    return-void
.end method

.method private setStateValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1821
    iput p1, p0, Lcom/google/firestore/admin/v1/Index;->state_:I

    .line 1822
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2441
    sget-object v0, Lcom/google/firestore/admin/v1/Index$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2484
    :pswitch_0
    return-object v1

    .line 2481
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2466
    :pswitch_2
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->PARSER:Lcom/google/protobuf/Parser;

    .line 2467
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/admin/v1/Index;>;"
    if-nez v0, :cond_1

    .line 2468
    const-class v1, Lcom/google/firestore/admin/v1/Index;

    monitor-enter v1

    .line 2469
    :try_start_0
    sget-object v2, Lcom/google/firestore/admin/v1/Index;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2470
    if-nez v0, :cond_0

    .line 2471
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2474
    sput-object v0, Lcom/google/firestore/admin/v1/Index;->PARSER:Lcom/google/protobuf/Parser;

    .line 2476
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2478
    :cond_1
    :goto_0
    return-object v0

    .line 2463
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/admin/v1/Index;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    return-object v0

    .line 2449
    :pswitch_4
    const-string v0, "name_"

    const-string v1, "queryScope_"

    const-string v2, "fields_"

    const-class v3, Lcom/google/firestore/admin/v1/Index$IndexField;

    const-string v4, "state_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 2456
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u000c\u0003\u001b\u0004\u000c"

    .line 2459
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/admin/v1/Index;->DEFAULT_INSTANCE:Lcom/google/firestore/admin/v1/Index;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/admin/v1/Index;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2446
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/admin/v1/Index$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/admin/v1/Index$Builder;-><init>(Lcom/google/firestore/admin/v1/Index$1;)V

    return-object v0

    .line 2443
    :pswitch_6
    new-instance v0, Lcom/google/firestore/admin/v1/Index;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index;-><init>()V

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

.method public getFields(I)Lcom/google/firestore/admin/v1/Index$IndexField;
    .locals 1
    .param p1, "index"    # I

    .line 1635
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexField;

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 1616
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/admin/v1/Index$IndexField;",
            ">;"
        }
    .end annotation

    .line 1578
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFieldsOrBuilder(I)Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1654
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;

    return-object v0
.end method

.method public getFieldsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/admin/v1/Index$IndexFieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1597
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->fields_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/google/firestore/admin/v1/Index;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryScope()Lcom/google/firestore/admin/v1/Index$QueryScope;
    .locals 2

    .line 1506
    iget v0, p0, Lcom/google/firestore/admin/v1/Index;->queryScope_:I

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$QueryScope;->forNumber(I)Lcom/google/firestore/admin/v1/Index$QueryScope;

    move-result-object v0

    .line 1507
    .local v0, "result":Lcom/google/firestore/admin/v1/Index$QueryScope;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firestore/admin/v1/Index$QueryScope;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$QueryScope;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getQueryScopeValue()I
    .locals 1

    .line 1489
    iget v0, p0, Lcom/google/firestore/admin/v1/Index;->queryScope_:I

    return v0
.end method

.method public getState()Lcom/google/firestore/admin/v1/Index$State;
    .locals 2

    .line 1809
    iget v0, p0, Lcom/google/firestore/admin/v1/Index;->state_:I

    invoke-static {v0}, Lcom/google/firestore/admin/v1/Index$State;->forNumber(I)Lcom/google/firestore/admin/v1/Index$State;

    move-result-object v0

    .line 1810
    .local v0, "result":Lcom/google/firestore/admin/v1/Index$State;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/firestore/admin/v1/Index$State;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getStateValue()I
    .locals 1

    .line 1797
    iget v0, p0, Lcom/google/firestore/admin/v1/Index;->state_:I

    return v0
.end method
