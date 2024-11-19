.class public final Lcom/google/firebase/firestore/proto/Target$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Target.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/Target;",
        "Lcom/google/firebase/firestore/proto/Target$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 630
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->access$000()Lcom/google/firebase/firestore/proto/Target;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 631
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/Target$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/Target$1;

    .line 623
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocuments()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1600(Lcom/google/firebase/firestore/proto/Target;)V

    .line 1053
    return-object p0
.end method

.method public clearLastLimboFreeSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 1128
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1129
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1900(Lcom/google/firebase/firestore/proto/Target;)V

    .line 1130
    return-object p0
.end method

.method public clearLastListenSequenceNumber()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 908
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1000(Lcom/google/firebase/firestore/proto/Target;)V

    .line 909
    return-object p0
.end method

.method public clearQuery()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 980
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$1300(Lcom/google/firebase/firestore/proto/Target;)V

    .line 981
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 840
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$800(Lcom/google/firebase/firestore/proto/Target;)V

    .line 842
    return-object p0
.end method

.method public clearSnapshotVersion()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$600(Lcom/google/firebase/firestore/proto/Target;)V

    .line 769
    return-object p0
.end method

.method public clearTargetId()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$300(Lcom/google/firebase/firestore/proto/Target;)V

    .line 686
    return-object p0
.end method

.method public clearTargetType()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target;->access$100(Lcom/google/firebase/firestore/proto/Target;)V

    .line 642
    return-object p0
.end method

.method public getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getLastListenSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getQuery()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getSnapshotVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getTargetId()I

    move-result v0

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasDocuments()Z

    move-result v0

    return v0
.end method

.method public hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasLastLimboFreeSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasQuery()Z

    move-result v0

    return v0
.end method

.method public hasSnapshotVersion()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->hasSnapshotVersion()Z

    move-result v0

    return v0
.end method

.method public mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1039
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 1041
    return-object p0
.end method

.method public mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1116
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1117
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    .line 1118
    return-object p0
.end method

.method public mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 967
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 968
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1200(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 969
    return-object p0
.end method

.method public mergeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 754
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    .line 756
    return-object p0
.end method

.method public setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    .line 1027
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1028
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/Target;->access$1400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 1029
    return-object p0
.end method

.method public setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1014
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1015
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 1016
    return-object p0
.end method

.method public setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1103
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1104
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/Target;->access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    .line 1105
    return-object p0
.end method

.method public setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1089
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 1090
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    .line 1091
    return-object p0
.end method

.method public setLastListenSequenceNumber(J)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 885
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->access$900(Lcom/google/firebase/firestore/proto/Target;J)V

    .line 887
    return-object p0
.end method

.method public setQuery(Lcom/google/firestore/v1/Target$QueryTarget$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    .line 955
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/Target;->access$1100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 957
    return-object p0
.end method

.method public setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 942
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 943
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$1100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V

    .line 944
    return-object p0
.end method

.method public setResumeToken(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 816
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/ByteString;)V

    .line 818
    return-object p0
.end method

.method public setSnapshotVersion(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 740
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/Target;->access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    .line 742
    return-object p0
.end method

.method public setSnapshotVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 725
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V

    .line 727
    return-object p0
.end method

.method public setTargetId(I)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 670
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/Target$Builder;->copyOnWrite()V

    .line 671
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/Target;->access$200(Lcom/google/firebase/firestore/proto/Target;I)V

    .line 672
    return-object p0
.end method
