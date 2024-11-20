.class public final Lcom/google/firestore/v1/Target$QueryTarget$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target$QueryTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Target$QueryTarget;",
        "Lcom/google/firestore/v1/Target$QueryTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 944
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->access$700()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 945
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Target$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Target$1;

    .line 937
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParent()Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 1029
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1030
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->access$1000(Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 1031
    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->access$800(Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 956
    return-object p0
.end method

.method public clearStructuredQuery()Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1122
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->access$1400(Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 1123
    return-object p0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getQueryTypeCase()Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->hasStructuredQuery()Z

    move-result v0

    return v0
.end method

.method public mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 1109
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->access$1300(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 1111
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1011
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1012
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->access$900(Lcom/google/firestore/v1/Target$QueryTarget;Ljava/lang/String;)V

    .line 1013
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1049
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1050
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->access$1100(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/protobuf/ByteString;)V

    .line 1051
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery$Builder;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 1097
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1098
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Target$QueryTarget;->access$1200(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 1099
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 1084
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->copyOnWrite()V

    .line 1085
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->access$1200(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 1086
    return-object p0
.end method
