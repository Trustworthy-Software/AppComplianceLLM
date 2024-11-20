.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationRule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRuleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATE_QUERY_INDEXES_FIELD_NUMBER:I = 0x2

.field public static final VALIDATE_QUERY_RESULT_ORDER_FIELD_NUMBER:I = 0x1


# instance fields
.field private validateQueryIndexes_:Z

.field private validateQueryResultOrder_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1059
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;-><init>()V

    .line 1062
    .local v0, "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 1063
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1065
    .end local v0    # "defaultInstance":Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 744
    return-void
.end method

.method static synthetic access$1200()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1

    .line 738
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .param p1, "x1"    # Z

    .line 738
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->setValidateQueryResultOrder(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 738
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->clearValidateQueryResultOrder()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .param p1, "x1"    # Z

    .line 738
    invoke-direct {p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->setValidateQueryIndexes(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 738
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->clearValidateQueryIndexes()V

    return-void
.end method

.method private clearValidateQueryIndexes()V
    .locals 1

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->validateQueryIndexes_:Z

    .line 822
    return-void
.end method

.method private clearValidateQueryResultOrder()V
    .locals 1

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->validateQueryResultOrder_:Z

    .line 781
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1

    .line 1068
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1

    .line 899
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    .line 902
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 840
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 847
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 827
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 834
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 852
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 859
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;",
            ">;"
        }
    .end annotation

    .line 1074
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValidateQueryIndexes(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 809
    iput-boolean p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->validateQueryIndexes_:Z

    .line 810
    return-void
.end method

.method private setValidateQueryResultOrder(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 769
    iput-boolean p1, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->validateQueryResultOrder_:Z

    .line 770
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1052
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1049
    :pswitch_0
    return-object v1

    .line 1046
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1031
    :pswitch_2
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 1032
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;>;"
    if-nez v0, :cond_1

    .line 1033
    const-class v1, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    monitor-enter v1

    .line 1034
    :try_start_0
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1035
    if-nez v0, :cond_0

    .line 1036
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1039
    sput-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 1041
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1043
    :cond_1
    :goto_0
    return-object v0

    .line 1028
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;>;"
    :pswitch_3
    sget-object v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    return-object v0

    .line 1017
    :pswitch_4
    const-string v0, "validateQueryResultOrder_"

    const-string v1, "validateQueryIndexes_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1021
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007"

    .line 1024
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->DEFAULT_INSTANCE:Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-static {v2, v1, v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1014
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;

    invoke-direct {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule$Builder;-><init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V

    return-object v0

    .line 1011
    :pswitch_6
    new-instance v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;

    invoke-direct {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;-><init>()V

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

.method public getValidateQueryIndexes()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->validateQueryIndexes_:Z

    return v0
.end method

.method public getValidateQueryResultOrder()Z
    .locals 1

    .line 757
    iget-boolean v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$ValidationRule;->validateQueryResultOrder_:Z

    return v0
.end method
