.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$SumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$SumOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 918
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;-><init>()V

    .line 921
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 922
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 924
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 620
    return-void
.end method

.method static synthetic access$500()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1

    .line 614
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 614
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .param p1, "x1"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 614
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 614
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->clearField()V

    return-void
.end method

.method private clearField()V
    .locals 1

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 685
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1

    .line 927
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method private mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz v0, :cond_0

    .line 668
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 670
    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    goto :goto_0

    .line 672
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 675
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;
    .locals 1

    .line 762
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 765
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 703
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 710
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 690
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 715
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 722
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;",
            ">;"
        }
    .end annotation

    .line 933
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 656
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 870
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 908
    :pswitch_0
    return-object v1

    .line 905
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 890
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->PARSER:Lcom/google/protobuf/Parser;

    .line 891
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;>;"
    if-nez v0, :cond_1

    .line 892
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    monitor-enter v1

    .line 893
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 894
    if-nez v0, :cond_0

    .line 895
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 898
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->PARSER:Lcom/google/protobuf/Parser;

    .line 900
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 902
    :cond_1
    :goto_0
    return-object v0

    .line 887
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    return-object v0

    .line 878
    :pswitch_4
    const-string v0, "field_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 881
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 883
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 875
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;-><init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V

    return-object v0

    .line 872
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;-><init>()V

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

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasField()Z
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
