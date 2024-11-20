.class public final Lcom/google/firestore/v1/TransactionOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TransactionOptions.java"

# interfaces
.implements Lcom/google/firestore/v1/TransactionOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TransactionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/TransactionOptions;",
        "Lcom/google/firestore/v1/TransactionOptions$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TransactionOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1001
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->access$1000()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1002
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/TransactionOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/TransactionOptions$1;

    .line 994
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMode()Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1

    .line 1011
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1012
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->access$1100(Lcom/google/firestore/v1/TransactionOptions;)V

    .line 1013
    return-object p0
.end method

.method public clearReadOnly()Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1085
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->access$1400(Lcom/google/firestore/v1/TransactionOptions;)V

    .line 1086
    return-object p0
.end method

.method public clearReadWrite()Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1

    .line 1156
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->access$1700(Lcom/google/firestore/v1/TransactionOptions;)V

    .line 1158
    return-object p0
.end method

.method public getModeCase()Lcom/google/firestore/v1/TransactionOptions$ModeCase;
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->getModeCase()Lcom/google/firestore/v1/TransactionOptions$ModeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->getReadOnly()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    move-result-object v0

    return-object v0
.end method

.method public getReadWrite()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->getReadWrite()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    move-result-object v0

    return-object v0
.end method

.method public hasReadOnly()Z
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->hasReadOnly()Z

    move-result v0

    return v0
.end method

.method public hasReadWrite()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions;->hasReadWrite()Z

    move-result v0

    return v0
.end method

.method public mergeReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 1072
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions;->access$1300(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    .line 1074
    return-object p0
.end method

.method public mergeReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 1144
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions;->access$1600(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V

    .line 1146
    return-object p0
.end method

.method public setReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;

    .line 1060
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1061
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TransactionOptions;->access$1200(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    .line 1062
    return-object p0
.end method

.method public setReadOnly(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    .line 1047
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions;->access$1200(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    .line 1049
    return-object p0
.end method

.method public setReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;

    .line 1132
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1133
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TransactionOptions;->access$1500(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V

    .line 1134
    return-object p0
.end method

.method public setReadWrite(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)Lcom/google/firestore/v1/TransactionOptions$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    .line 1119
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions;->access$1500(Lcom/google/firestore/v1/TransactionOptions;Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V

    .line 1121
    return-object p0
.end method
