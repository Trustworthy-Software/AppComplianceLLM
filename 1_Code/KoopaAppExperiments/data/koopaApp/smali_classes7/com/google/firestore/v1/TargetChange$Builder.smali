.class public final Lcom/google/firestore/v1/TargetChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TargetChange.java"

# interfaces
.implements Lcom/google/firestore/v1/TargetChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TargetChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/TargetChange;",
        "Lcom/google/firestore/v1/TargetChange$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 701
    invoke-static {}, Lcom/google/firestore/v1/TargetChange;->access$000()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 702
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/TargetChange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/TargetChange$1;

    .line 694
    invoke-direct {p0}, Lcom/google/firestore/v1/TargetChange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/TargetChange$Builder;"
        }
    .end annotation

    .line 880
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$600(Lcom/google/firestore/v1/TargetChange;Ljava/lang/Iterable;)V

    .line 882
    return-object p0
.end method

.method public addTargetIds(I)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 860
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$500(Lcom/google/firestore/v1/TargetChange;I)V

    .line 862
    return-object p0
.end method

.method public clearCause()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 970
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$1000(Lcom/google/firestore/v1/TargetChange;)V

    .line 971
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 1128
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1129
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$1500(Lcom/google/firestore/v1/TargetChange;)V

    .line 1130
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 1015
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1016
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$1200(Lcom/google/firestore/v1/TargetChange;)V

    .line 1017
    return-object p0
.end method

.method public clearTargetChangeType()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$300(Lcom/google/firestore/v1/TargetChange;)V

    .line 768
    return-object p0
.end method

.method public clearTargetIds()Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1

    .line 898
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0}, Lcom/google/firestore/v1/TargetChange;->access$700(Lcom/google/firestore/v1/TargetChange;)V

    .line 900
    return-object p0
.end method

.method public getCause()Lcom/google/rpc/Status;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getCause()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetChangeType()Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChangeTypeValue()I
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public getTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 823
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TargetChange;->getTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getTargetIdsCount()I
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    .line 788
    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->getTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 787
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCause()Z
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->hasCause()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TargetChange;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeCause(Lcom/google/rpc/Status;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 958
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 959
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$900(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V

    .line 960
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1110
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1111
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$1400(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V

    .line 1112
    return-object p0
.end method

.method public setCause(Lcom/google/rpc/Status$Builder;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/Status$Builder;

    .line 946
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 947
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TargetChange;->access$800(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V

    .line 948
    return-object p0
.end method

.method public setCause(Lcom/google/rpc/Status;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 933
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 934
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$800(Lcom/google/firestore/v1/TargetChange;Lcom/google/rpc/Status;)V

    .line 935
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1091
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1092
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TargetChange;->access$1300(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V

    .line 1093
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1071
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1072
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$1300(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/Timestamp;)V

    .line 1073
    return-object p0
.end method

.method public setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1000
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$1100(Lcom/google/firestore/v1/TargetChange;Lcom/google/protobuf/ByteString;)V

    .line 1002
    return-object p0
.end method

.method public setTargetChangeType(Lcom/google/firestore/v1/TargetChange$TargetChangeType;)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange$TargetChangeType;

    .line 753
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 754
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$200(Lcom/google/firestore/v1/TargetChange;Lcom/google/firestore/v1/TargetChange$TargetChangeType;)V

    .line 755
    return-object p0
.end method

.method public setTargetChangeTypeValue(I)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 727
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 728
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TargetChange;->access$100(Lcom/google/firestore/v1/TargetChange;I)V

    .line 729
    return-object p0
.end method

.method public setTargetIds(II)Lcom/google/firestore/v1/TargetChange$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 841
    invoke-virtual {p0}, Lcom/google/firestore/v1/TargetChange$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lcom/google/firestore/v1/TargetChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/TargetChange;->access$400(Lcom/google/firestore/v1/TargetChange;II)V

    .line 843
    return-object p0
.end method
