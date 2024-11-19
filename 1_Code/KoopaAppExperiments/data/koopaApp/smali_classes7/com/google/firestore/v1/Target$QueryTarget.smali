.class public final Lcom/google/firestore/v1/Target$QueryTarget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$QueryTarget$Builder;,
        Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target$QueryTarget;",
        "Lcom/google/firestore/v1/Target$QueryTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$QueryTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1185
    new-instance v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$QueryTarget;-><init>()V

    .line 1188
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Target$QueryTarget;
    sput-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1189
    const-class v1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1191
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Target$QueryTarget;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    .line 644
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    .line 645
    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 638
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget;->clearParent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 638
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 638
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 638
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 638
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget;->clearStructuredQuery()V

    return-void
.end method

.method static synthetic access$700()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 638
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 638
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget;->clearQueryType()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Target$QueryTarget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target$QueryTarget;
    .param p1, "x1"    # Ljava/lang/String;

    .line 638
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 757
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    .line 758
    return-void
.end method

.method private clearQueryType()V
    .locals 1

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 685
    return-void
.end method

.method private clearStructuredQuery()V
    .locals 2

    .line 843
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 847
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 1194
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method private mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 827
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 828
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->newBuilder(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    goto :goto_0

    .line 831
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 833
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    .line 834
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 924
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 927
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Target$QueryTarget;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Target$QueryTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 865
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 872
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 852
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 859
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 877
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 884
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$QueryTarget;",
            ">;"
        }
    .end annotation

    .line 1200
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 741
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    .line 742
    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 774
    invoke-static {p1}, Lcom/google/firestore/v1/Target$QueryTarget;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 775
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    .line 777
    return-void
.end method

.method private setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 813
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 815
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    .line 816
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1175
    :pswitch_0
    return-object v1

    .line 1172
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1157
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 1158
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target$QueryTarget;>;"
    if-nez v0, :cond_1

    .line 1159
    const-class v1, Lcom/google/firestore/v1/Target$QueryTarget;

    monitor-enter v1

    .line 1160
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1161
    if-nez v0, :cond_0

    .line 1162
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1165
    sput-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 1167
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1169
    :cond_1
    :goto_0
    return-object v0

    .line 1154
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target$QueryTarget;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0

    .line 1141
    :pswitch_4
    const-string v0, "queryType_"

    const-string v1, "queryTypeCase_"

    const-string v2, "parent_"

    const-class v3, Lcom/google/firestore/v1/StructuredQuery;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1147
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002<\u0000"

    .line 1150
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Target$QueryTarget;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1138
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object v0

    .line 1135
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$QueryTarget;-><init>()V

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

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;
    .locals 1

    .line 678
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 2

    .line 800
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 801
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 803
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 2

    .line 789
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
