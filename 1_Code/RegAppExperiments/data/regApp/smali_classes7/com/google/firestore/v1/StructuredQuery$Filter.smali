.class public final Lcom/google/firestore/v1/StructuredQuery$Filter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;,
        Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$Filter;",
        "Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$FilterOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMPOSITE_FILTER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

.field public static final FIELD_FILTER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNARY_FILTER_FIELD_NUMBER:I = 0x3


# instance fields
.field private filterTypeCase_:I

.field private filterType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1331
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;-><init>()V

    .line 1334
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredQuery$Filter;
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 1335
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1337
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredQuery$Filter;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 687
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 688
    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->mergeCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 682
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->clearCompositeFilter()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->setFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->mergeFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 682
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->clearFieldFilter()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->mergeUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 682
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->clearUnaryFilter()V

    return-void
.end method

.method static synthetic access$700()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 682
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 682
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->clearFilterType()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/StructuredQuery$Filter;Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredQuery$Filter;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 682
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->setCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V

    return-void
.end method

.method private clearCompositeFilter()V
    .locals 2

    .line 798
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 802
    :cond_0
    return-void
.end method

.method private clearFieldFilter()V
    .locals 2

    .line 868
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 872
    :cond_0
    return-void
.end method

.method private clearFilterType()V
    .locals 1

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 732
    return-void
.end method

.method private clearUnaryFilter()V
    .locals 2

    .line 938
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 939
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 942
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 1340
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method private mergeCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 780
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 781
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 782
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 783
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    move-result-object v0

    .line 784
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    goto :goto_0

    .line 786
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 788
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 789
    return-void
.end method

.method private mergeFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 852
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    goto :goto_0

    .line 856
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 858
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 859
    return-void
.end method

.method private mergeUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 922
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 923
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    move-result-object v0

    .line 924
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    goto :goto_0

    .line 926
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 928
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 929
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1

    .line 1019
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 1022
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 996
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Filter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 960
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 967
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 947
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 954
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 972
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 979
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Filter;",
            ">;"
        }
    .end annotation

    .line 1346
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCompositeFilter(Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    .line 768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 770
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 771
    return-void
.end method

.method private setFieldFilter(Lcom/google/firestore/v1/StructuredQuery$FieldFilter;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    .line 838
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 840
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 841
    return-void
.end method

.method private setUnaryFilter(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 908
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 909
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    .line 910
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    .line 911
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1278
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1321
    :pswitch_0
    return-object v1

    .line 1318
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1303
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->PARSER:Lcom/google/protobuf/Parser;

    .line 1304
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery$Filter;>;"
    if-nez v0, :cond_1

    .line 1305
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    monitor-enter v1

    .line 1306
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery$Filter;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1307
    if-nez v0, :cond_0

    .line 1308
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1311
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->PARSER:Lcom/google/protobuf/Parser;

    .line 1313
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1315
    :cond_1
    :goto_0
    return-object v0

    .line 1300
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredQuery$Filter;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-object v0

    .line 1286
    :pswitch_4
    const-string v0, "filterType_"

    const-string v1, "filterTypeCase_"

    const-class v2, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    const-class v3, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    const-class v4, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1293
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    .line 1296
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredQuery$Filter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1283
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object v0

    .line 1280
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter;-><init>()V

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

.method public getCompositeFilter()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
    .locals 2

    .line 755
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    return-object v0

    .line 758
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFieldFilter()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;
    .locals 2

    .line 825
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    return-object v0

    .line 828
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldFilter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldFilter;

    move-result-object v0

    return-object v0
.end method

.method public getFilterTypeCase()Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;
    .locals 1

    .line 725
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Filter$FilterTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getUnaryFilter()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 2

    .line 895
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 896
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object v0

    .line 898
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    move-result-object v0

    return-object v0
.end method

.method public hasCompositeFilter()Z
    .locals 2

    .line 744
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFieldFilter()Z
    .locals 2

    .line 814
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnaryFilter()Z
    .locals 2

    .line 884
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Filter;->filterTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
